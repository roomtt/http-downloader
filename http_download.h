#ifndef _HTTP_DOWNLOAD_H
#define _HTTP_DOWNLOAD_H

struct HTTP_RES_HEADER//保持相应头信息
{
    int status_code;//HTTP/1.1 '200' OK
    char content_type[128];//Content-Type: application/gzip
    long content_length;//Content-Length: 11683079
};

/**return:0-成功，-1-失败**/
int http_download(const char *purl, const char *pfile_name);

#endif


