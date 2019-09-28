FROM microsoft/dotnet:2.2.2-aspnetcore-runtime
WORKDIR /app
COPY sources.list /app/sources.list
RUN rm -f /etc/apt/sources.list && mv sources.list /etc/apt/ && apt-get update -y && apt-get install -y libgdiplus && apt-get clean && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
