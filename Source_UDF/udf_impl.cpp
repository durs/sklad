#include "stdafx.h"


#define IBUDF_API extern "C" __declspec(dllexport)

//-------------------------------------------------------------

typedef struct blob {
	short	(*blob_get_segment) ();
	void	*blob_handle;
	long	blob_number_segments;
	long	blob_max_segment;
	long	blob_total_length;
	void	(*blob_put_segment) ();
} *BLOBDATA;

int BUFSIZE=255;

//======================if functions============================

IBUDF_API void* iif(long* b, void *v1, void *v2)
{
	return (*b) ? v1 : v2;
}

/*===============================================================
 str_compare(s1, s2)
================================================================= */

IBUDF_API long str_compare(char *s1, char *s2)
{
	long b = 1;
	while (*s1 && *s2) if(*s1++!=*s2++){ b=0; break;}
	if (*s1++!=*s2++) b = 0;
	return b;
}

/*===============================================================
 str_cat(s1, s2) - Returns concatenated string. 
	s1 and s2 are varchar to get a length count
================================================================= */

IBUDF_API char *str_cat(char *s1, char *s2)
{
	char *buf=(char *)ib_util_malloc(BUFSIZE+1);	
	char *p=buf;
	short len=0;
	
	for(;*s1 && (len<BUFSIZE);len++)*p++=*s1++;
	for(;*s2 && (len<BUFSIZE);len++)*p++=*s2++;
	*p = '\0';

	return buf; 
}

/*===============================================================
 str_cat3(s1, s2, s3) - Returns concatenated string. 
	s1 and s2 and s3 are varchar to get a length count
================================================================= */

IBUDF_API char *str_cat3(char *s1, char *s2, char *s3)
{
	char *buf=(char *)ib_util_malloc(BUFSIZE+1);	
	char *p=buf;
	short len=0;
	
	for(;*s1 && (len<BUFSIZE);len++)*p++=*s1++;
	for(;*s2 && (len<BUFSIZE);len++)*p++=*s2++;
	for(;*s3 && (len<BUFSIZE);len++)*p++=*s3++;
	*p = '\0';

	return buf; 
}


/*===============================================================
 str_cat4(s1, s2, s3, s4) - Returns concatenated string. 
	s1 and s2 and s3 and s4 are varchar to get a length count
================================================================= */

IBUDF_API char *str_cat4(char *s1, char *s2, char *s3, char *s4)
{
	char *buf=(char *)ib_util_malloc(BUFSIZE+1);	
	char *p=buf;
	short len=0;
	
	for(;*s1 && (len<BUFSIZE);len++)*p++=*s1++;
	for(;*s2 && (len<BUFSIZE);len++)*p++=*s2++;
	for(;*s3 && (len<BUFSIZE);len++)*p++=*s3++;
	for(;*s4 && (len<BUFSIZE);len++)*p++=*s4++;
	*p = '\0';

	return buf; 
}

/*===============================================================
 str_cat5(s1, s2, s3, s4, s5) - Returns concatenated string. 
	s1 and s2 and s3 and s4 and s5 are varchar to get a length count
================================================================= */

IBUDF_API char *str_cat5(char *s1, char *s2, char *s3, char *s4, char *s5)
{
	char *buf=(char *)ib_util_malloc(BUFSIZE+1);	
	char *p=buf;
	short len=0;
	
	for(;*s1 && (len<BUFSIZE);len++)*p++=*s1++;
	for(;*s2 && (len<BUFSIZE);len++)*p++=*s2++;
	for(;*s3 && (len<BUFSIZE);len++)*p++=*s3++;
	for(;*s4 && (len<BUFSIZE);len++)*p++=*s4++;
	for(;*s5 && (len<BUFSIZE);len++)*p++=*s5++;
	*p = '\0';

	return buf; 
}

/*===============================================================
 str_trunc(s, m) - Returns the string truncated at position m; 
 Input is of CSTRING, output is of VARCHAR.
================================================================= */
IBUDF_API char *str_trunc(char *s, short *m)
{
	if(*m<(short)*s) s[*m+2]='\0';
	s+=2;
	return s;
}

/*===============================================================
 str_mid(s, m, n) - Returns the substr starting m ending n in s. 
================================================================= */
IBUDF_API char *str_mid(char *s, short *m, short *n)
{
	short i=0,j=0;
	char *buf = (char *)ib_util_malloc(256);

	if (*m > *n || *m < 1 || *n < 1) return "Bad parameters in substring"; 
	while (*s && i++ < *m-1) s++;/* skip */                
	while (*s && i++ <= *n) buf[j++] = *s++; /* copy */                
	buf[j] = '\0';

	return buf;
}

/*===============================================================
 str_left(s, k) - Returns the left k chars
================================================================= */
IBUDF_API char *str_left(char *s, short *k)
{
	short i=0,j=0,n;
	char *buf = (char *)ib_util_malloc(256);
	n=(*k<0)?0:*k;
	while (*s && i++ < n) buf[j++] = *s++; /* copy */ 
	buf[j] = '\0';

	return buf;
}

/*===============================================================
 str_right(s, k) - Returns the right k chars 
================================================================= */
IBUDF_API char *str_right(char *s, short *k)
{
	short i=0,j=0,m,n;
	char *buf = (char *)ib_util_malloc(256);

	n=(short)*s;
	m=n+1;
	if(*k>0) m-=*k; 
	s+=2;
			
	while (*s && i++ < m-1) s++;/* skip */                
	while (*s && i++ <= n) buf[j++] = *s++; /* copy */                
	buf[j] = '\0';

	return buf;
}
/*===============================================================
 blob_substr(b, m, n) - Returns the substr starting m ending n in blob b. 
================================================================= */
/*
IBUDF_API char *blob_substr(BLOBDATA b, long *m, long *n)
{
	char *buf, *p, *q;
	long i = 0;
	long curr_bytecount = 0;
        long begin, end; 
	short length, actual_length;
 
	char *buffer = (char *)ib_util_malloc(256);

	if (!b->blob_handle)
		return "<null>";
	length = b->blob_max_segment + 1L;
	buf = (char *) malloc (length); 


        if (*m > *n || *m < 1L || *n < 1L) 
		return "";
	if (b->blob_total_length < (long)*m) 
		return "";

	begin = *m;				// beginning position

	if (b->blob_total_length < (long)*n)
		end = b->blob_total_length;	// ending position
	else
		end = *n;

	// Limit the return string to 255 bytes
	if (end - begin + 1L > 255L) end = begin + 254L;
	q = buffer;

        while ((*b->blob_get_segment) (b->blob_handle, buf, length, &actual_length)) {
		buf [actual_length] = 0;

		p = buf;
		while (*p && (curr_bytecount <= end))
			{
			curr_bytecount++;
			if (*p == '\n')
				*p = ' ';
			if (curr_bytecount >= begin)
				*q++ = *p;
			p++;
			}
		if (curr_bytecount >= end)
			{
			*q = 0;
			break;
			}
		}
 
	free (buf);
        return buffer;
}
*/
/*===============================================================
 binary function
================================================================= */
IBUDF_API long bit_and(long *n1, long *n2)
{ 
	return *n1 & *n2; 
}

IBUDF_API long bit_or(long *n1, long *n2)
{ 
	return *n1 | *n2; 
}

IBUDF_API long bit_not(long *n1, long *n2)
{ 
	return ~*n2; 
}

/*===============================================================
 round function
================================================================= */
IBUDF_API double round_curr(double *n)
{
    if (*n < 0) return ceil(*n * 100 - 0.50000001) / 100;
    return floor(*n * 100 + 0.50000001) / 100;
}

IBUDF_API double round_float(double *n, int *k)
{
    if (*n < 0) return ceil(*n * *k - 0.50000001) / *k;
    return floor(*n * *k + 0.50000001) / *k;
}

IBUDF_API double round_float_ceil(double *n, int *k)
{
  return ceil(*n * *k)/(*k);
}

//=========================debug function======================================
IBUDF_API long debug_msg(char *s)
{
	return (MessageBoxA(0,s,"debug",MB_ICONSTOP | MB_SYSTEMMODAL | MB_OKCANCEL) == IDOK) ? 1 : 0;
}

//=================application specific function===============================
IBUDF_API char *name_fio(char *name1, char *name2, char *name3)
{
	char *buf=(char *)ib_util_malloc(BUFSIZE+1);	
	char *p=buf;
	short len=0;
	
	for(;*name1 && (len<BUFSIZE);len++)*p++=*name1++;
	if(len<BUFSIZE){len++; *p++=' ';}
	if(*name2 && (len+2<BUFSIZE)){len+=2; *p++=*name2; *p++='.';}
	if(*name3 && (len+2<BUFSIZE)){len+=2; *p++=*name3; *p++='.';}
	*p='\0';

	return buf; 
}

IBUDF_API char *name_full(char *status, char *name, char *info)
{
	char *buf=(char *)ib_util_malloc(BUFSIZE+1);
	char *p=buf;
	short len=0,b;
	for(;*status && (len<BUFSIZE);len++)*p++=*status++;
	b=(len==0)||(*--status==' ');
	if(!b && (len+2<BUFSIZE)){len+=2; *p++=' '; *p++='\"';}
	for(;*name && (len<BUFSIZE);len++)*p++=*name++;
	if(!b && (len+1<BUFSIZE)){len++; *p++='\"';}
	if(*info && (len+2<BUFSIZE)){
		len+=2; *p++=','; *p++=' ';
		for(;*info && (len<BUFSIZE);len++)*p++=*info++;
	}
	*p='\0';
	return buf; 
}


//========================sklad routens==================================

#define docUnknown 	0
#define docProduct 	1
#define docCredit 	2
#define docQuery 	3
#define docKindMask 	0xFF 
#define docRezervMask 	0x100 //256
#define docArchivMask 	0x200 //512

#define docExport	-1
#define docInner	0
#define docCheck	1
#define docOrder	2
#define docBeznal	3


IBUDF_API char *get_doc_name(int *kind, int *skind, char *no, ISC_QUAD *date, double *sum)
{
	char *caption;
	static const int bufsize = 50;
	char *buf=(char *)ib_util_malloc(bufsize);
	struct tm d; 
	if (date) isc_decode_date(date,&d);

    switch (*kind & docKindMask) 
	{
    case docProduct: 
		switch (*skind) 
		{
        case docExport:
		case docInner:
			caption="внутр.накл.";
			break; 

        case docCheck: 
			caption="тов.чек";
			break;

        default:
			if (*sum<0) caption="возвр.накладная";
			else caption="накладная";
		}
		break;

	case docCredit: 
		switch (*skind) 
		{
		case docCheck: 
			caption="касс.чек";
			break;

		case docOrder: 
			if (*sum>0) caption="расх.к.ордер";
			else caption="пр.к.ордер";
			break;

		case docBeznal:
			caption="плат.поруч.";
			break;

		default: 
			caption="пл.расч.док.";
		}
		break;

	case docQuery: 
		caption="заказ";
		break;

	default:
		return 0;
		//caption="документ";
	}

	#ifdef BORLAND
	if (*no && date->gds_quad_high) sprintf(buf, "%s №%s от %u.%u.%u", caption, no, d.tm_mday, d.tm_mon + 1, d.tm_year + 1900);
	else if (date->gds_quad_high) sprintf(buf, "%s от %u.%u.%u", caption, d.tm_mday, d.tm_mon + 1, d.tm_year + 1900);
	else if (*no) sprintf(buf, "%s №%s", caption, no);
	else strcpy(buf, caption);
	#else
	if (*no && date->gds_quad_high) sprintf_s(buf, bufsize, "%s №%s от %u.%u.%u", caption, no, d.tm_mday, d.tm_mon + 1, d.tm_year + 1900);
	else if (date->gds_quad_high) sprintf_s(buf, bufsize, "%s от %u.%u.%u", caption, d.tm_mday, d.tm_mon + 1, d.tm_year + 1900);
	else if (*no) sprintf_s(buf, bufsize, "%s №%s", caption, no);
	else strcpy_s(buf, bufsize, caption);
	#endif


	//*(short*)buf=strlen(buf+2);
	return buf;
}

#define PRODSIZE 100

IBUDF_API char *get_product_name(char *name, char *classname, char *produsername, char *prodlen)
{
	char *buf=(char *)ib_util_malloc(PRODSIZE+1);
	char *p=buf;
	short len=0;
	if (*produsername) 
	{
		for(;*produsername && (len++<PRODSIZE);) *p++=*produsername++;
	}
	if (*classname && PRODSIZE-len>2) 
	{
		if (len ) { *p++=','; *p++=' '; len+=2;}
		for(;*classname && (len++<PRODSIZE);) *p++=*classname++;
	}	
	if (*name && PRODSIZE-len>2) 
	{
		if (len ) { *p++=','; *p++=' '; len+=2;}
		for(;*name && (len++<PRODSIZE);) *p++=*name++;
	}
	if (*prodlen && PRODSIZE-len>2) 
	{
		if (len ) { *p++=','; *p++=' '; len+=2;}
		for(;*prodlen && (len++<PRODSIZE);) *p++=*prodlen++;
	}
	*p = '\0';

	return buf; 
}

IBUDF_API char *get_full_name(char *fullname, char *name)
{
	char *buf;
	unsigned short length = *(unsigned short*)fullname;
	if (length == 0) 
	{
		fullname = name;
		length = *(unsigned short*)fullname;
	}
	fullname +=2;

	buf = (char *)ib_util_malloc(length + 1);
	memcpy(buf, fullname, length);
	buf[length] = 0;
	return buf;
}

/*===============================================================
 binary function
================================================================= */
IBUDF_API double safe_div(double *n1, double *n2)
{
	if (*n2 == 0.) return 0.;
	return *n1 / *n2;
}
