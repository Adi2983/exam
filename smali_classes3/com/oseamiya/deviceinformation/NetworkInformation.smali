.class public Lcom/oseamiya/deviceinformation/NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkInformation.java"


# static fields
.field private static final FACTORY_DNS_SERVERS:[Ljava/lang/String;

.field private static final METHOD_EXEC_PROP_DELIM:Ljava/lang/String; = "]: ["

.field private static final TAG:Ljava/lang/String; = "NetworkInformation"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "8.8.8.8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "8.8.4.4"

    aput-object v3, v1, v2

    sput-object v0, Lcom/oseamiya/deviceinformation/NetworkInformation;->FACTORY_DNS_SERVERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/NetworkInformation;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private getServersMethodConnectivityManager()[Ljava/lang/String;
    .locals 18

    .prologue
    .line 113
    move-object/from16 v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_4

    .line 116
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v14

    .line 117
    .local v1, "priorityServersArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v14

    .line 119
    .local v2, "serversArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v14, v0

    iget-object v14, v14, Lcom/oseamiya/deviceinformation/NetworkInformation;->context:Landroid/content/Context;

    const-string/jumbo v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object v3, v14

    .line 120
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    move-object v14, v3

    if-eqz v14, :cond_2

    .line 124
    move-object v14, v3

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v14

    move-object v4, v14

    move-object v14, v4

    array-length v14, v14

    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    :goto_0
    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_2

    move-object v14, v4

    move v15, v6

    aget-object v14, v14, v15

    move-object v7, v14

    .line 126
    .local v7, "network":Landroid/net/Network;
    move-object v14, v3

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v14

    move-object v8, v14

    .line 127
    .local v8, "networkInfo":Landroid/net/NetworkInfo;
    move-object v14, v8

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 129
    move-object v14, v3

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v14

    move-object v9, v14

    .line 130
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    move-object v14, v9

    invoke-virtual {v14}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v14

    move-object v10, v14

    .line 133
    .local v10, "dnsServersList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move-object v14, v0

    move-object v15, v9

    invoke-direct {v14, v15}, Lcom/oseamiya/deviceinformation/NetworkInformation;->linkPropertiesHasDefaultRoute(Landroid/net/LinkProperties;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 135
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v11, v14

    :goto_1
    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    move-object v12, v14

    .line 137
    .local v12, "element":Ljava/net/InetAddress;
    move-object v14, v12

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 138
    .local v13, "dnsHost":Ljava/lang/String;
    move-object v14, v1

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 140
    goto :goto_1

    .line 124
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v10    # "dnsServersList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v12    # "element":Ljava/net/InetAddress;
    .end local v13    # "dnsHost":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v10    # "dnsServersList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_1
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v11, v14

    :goto_2
    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    move-object v12, v14

    .line 146
    .restart local v12    # "element":Ljava/net/InetAddress;
    move-object v14, v12

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 147
    .restart local v13    # "dnsHost":Ljava/lang/String;
    move-object v14, v2

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 149
    goto :goto_2

    .line 160
    .end local v7    # "network":Landroid/net/Network;
    .end local v8    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v10    # "dnsServersList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v12    # "element":Ljava/net/InetAddress;
    .end local v13    # "dnsHost":Ljava/lang/String;
    :cond_2
    move-object v14, v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 162
    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v14

    .line 167
    :cond_3
    move-object v14, v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 169
    move-object v14, v1

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v14

    .line 182
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :goto_3
    return-object v0

    .line 177
    .line 182
    .end local v1    # "priorityServersArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "serversArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :cond_4
    :goto_4
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_3

    .line 173
    :catch_0
    move-exception v14

    move-object v1, v14

    .line 175
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v14, "NetworkInformation"

    const-string/jumbo v15, "Exception detecting DNS servers using ConnectivityManager method"

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    goto :goto_4
.end method

.method private getServersMethodExec()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 249
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "getprop"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v1, v5

    .line 250
    .local v1, "process":Ljava/lang/Process;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 251
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/LineNumberReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 252
    .local v3, "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/oseamiya/deviceinformation/NetworkInformation;->methodExecParseProps(Ljava/io/BufferedReader;)Ljava/util/Set;

    move-result-object v5

    move-object v4, v5

    .line 253
    .local v4, "serversSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 255
    move-object v5, v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 268
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :goto_0
    return-object v0

    .line 263
    .line 268
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .end local v4    # "serversSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 259
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 261
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "NetworkInformation"

    const-string/jumbo v6, "Exception in getServersMethodExec"

    move-object v7, v1

    invoke-static {v5, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1
.end method

.method private getServersMethodSystemProperties()[Ljava/lang/String;
    .locals 17

    .prologue
    .line 189
    move-object/from16 v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-ge v10, v11, :cond_3

    .line 195
    const-string/jumbo v10, "^\\d+(\\.\\d+){3}$"

    move-object v1, v10

    .line 196
    .local v1, "re1":Ljava/lang/String;
    const-string/jumbo v10, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    move-object v2, v10

    .line 197
    .local v2, "re2":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 200
    .local v3, "serversArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v10, "android.os.SystemProperties"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object v4, v10

    .line 201
    .local v4, "SystemProperties":Ljava/lang/Class;
    move-object v10, v4

    const-string/jumbo v11, "get"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v5, v10

    .line 202
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    const-string/jumbo v13, "net.dns1"

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    const-string/jumbo v13, "net.dns2"

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x2

    const-string/jumbo v13, "net.dns3"

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x3

    const-string/jumbo v13, "net.dns4"

    aput-object v13, v11, v12

    move-object v6, v10

    .line 203
    .local v6, "netdns":[Ljava/lang/String;
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move-object v11, v6

    array-length v11, v11

    if-ge v10, v11, :cond_2

    .line 205
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v6

    move v14, v7

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    move-object v8, v10

    .line 206
    .local v8, "args":[Ljava/lang/Object;
    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v9, v10

    .line 207
    .local v9, "v":Ljava/lang/String;
    move-object v10, v9

    if-eqz v10, :cond_1

    move-object v10, v9

    const-string/jumbo v11, "^\\d+(\\.\\d+){3}$"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v9

    const-string/jumbo v11, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v10, v3

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 208
    move-object v10, v3

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 203
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 214
    .end local v8    # "args":[Ljava/lang/Object;
    .end local v9    # "v":Ljava/lang/String;
    :cond_2
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 216
    move-object v10, v3

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    .line 229
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :goto_1
    return-object v0

    .line 224
    .line 229
    .end local v1    # "re1":Ljava/lang/String;
    .end local v2    # "re2":Ljava/lang/String;
    .end local v3    # "serversArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "SystemProperties":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "netdns":[Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :cond_3
    :goto_2
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1

    .line 220
    .restart local v1    # "re1":Ljava/lang/String;
    .restart local v2    # "re2":Ljava/lang/String;
    .restart local v3    # "serversArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 222
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "NetworkInformation"

    const-string/jumbo v11, "Exception detecting DNS servers using SystemProperties method"

    move-object v12, v4

    invoke-static {v10, v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v10

    goto :goto_2
.end method

.method private isvpn1()Z
    .locals 8

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 362
    .local v1, "iface":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    move-object v3, v4

    .line 363
    .local v3, "networkInterface":Ljava/net/NetworkInterface;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    move-object v4, v3

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 365
    :cond_0
    const-string/jumbo v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IFACE NAME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 366
    move-object v4, v1

    const-string/jumbo v5, "tun"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "ppp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "pptp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    .line 374
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_1
    return v0

    .line 369
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    .restart local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_2
    goto :goto_0

    .line 372
    .line 374
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_3
    :goto_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 370
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 371
    .local v2, "e1":Ljava/net/SocketException;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2
.end method

.method private isvpn2()Z
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v5, v0

    iget-object v5, v5, Lcom/oseamiya/deviceinformation/NetworkInformation;->context:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    move-object v1, v5

    .line 379
    .local v1, "cm":Landroid/net/ConnectivityManager;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    move-object v2, v5

    .line 380
    .local v2, "activeNetwork":Landroid/net/Network;
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    move-object v3, v5

    .line 381
    .local v3, "caps":Landroid/net/NetworkCapabilities;
    move-object v5, v3

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    move v4, v5

    .line 382
    .local v4, "vpnInUse":Z
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    return v0
.end method

.method private linkPropertiesHasDefaultRoute(Landroid/net/LinkProperties;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v1, p1

    .local v1, "linkProperties":Landroid/net/LinkProperties;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    move-object v3, v4

    .line 340
    .local v3, "route":Landroid/net/RouteInfo;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    const/4 v4, 0x1

    move v0, v4

    .line 344
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :goto_1
    return v0

    .line 343
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    .restart local v3    # "route":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 344
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private methodExecParseProps(Ljava/io/BufferedReader;)Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v1, p1

    .local v1, "lineNumberReader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/util/HashSet;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(I)V

    move-object v3, v10

    .line 283
    .local v3, "serversSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v2, v11

    .local v2, "line":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 284
    move-object v10, v2

    const-string/jumbo v11, "]: ["

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move v4, v10

    .line 285
    .local v4, "split":I
    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 286
    goto :goto_0

    .line 288
    :cond_0
    move-object v10, v2

    const/4 v11, 0x1

    move v12, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 290
    .local v5, "property":Ljava/lang/String;
    move v10, v4

    const-string/jumbo v11, "]: ["

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    move v6, v10

    .line 291
    .local v6, "valueStart":I
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v7, v10

    .line 292
    .local v7, "valueEnd":I
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_1

    .line 296
    const-string/jumbo v10, "NetworkInformation"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Malformed property detected: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 297
    goto :goto_0

    .line 301
    :cond_1
    move-object v10, v2

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 303
    .local v8, "value":Ljava/lang/String;
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 305
    goto :goto_0

    .line 309
    :cond_2
    move-object v10, v5

    const-string/jumbo v11, ".dns"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v5

    const-string/jumbo v11, ".dns1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v5

    const-string/jumbo v11, ".dns2"

    .line 310
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v5

    const-string/jumbo v11, ".dns3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v5

    const-string/jumbo v11, ".dns4"

    .line 311
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 314
    :cond_3
    move-object v10, v8

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move-object v9, v10

    .line 315
    .local v9, "ip":Ljava/net/InetAddress;
    move-object v10, v9

    if-nez v10, :cond_4

    goto/16 :goto_0

    .line 316
    :cond_4
    move-object v10, v9

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 318
    move-object v10, v8

    if-nez v10, :cond_5

    goto/16 :goto_0

    .line 319
    :cond_5
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_0

    .line 321
    :cond_6
    move-object v10, v3

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 325
    .end local v9    # "ip":Ljava/net/InetAddress;
    :cond_7
    goto/16 :goto_0

    .line 327
    .end local v4    # "split":I
    .end local v5    # "property":Ljava/lang/String;
    .end local v6    # "valueStart":I
    .end local v7    # "valueEnd":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    return-object v0
.end method


# virtual methods
.method public getIpAddress(Z)Ljava/lang/String;
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 49
    move-object/from16 v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move/from16 v2, p1

    .local v2, "useIPv4":Z
    const/4 v13, 0x0

    move v3, v13

    .line 50
    .local v3, "delim":I
    const-string/jumbo v13, ""

    move-object v4, v13

    .line 52
    .local v4, "finalAdress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v5, v13

    .line 53
    .local v5, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v13

    :goto_0
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/NetworkInterface;

    move-object v7, v13

    .line 54
    .local v7, "intf":Ljava/net/NetworkInterface;
    move-object v13, v7

    invoke-virtual {v13}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v8, v13

    .line 55
    .local v8, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v9, v13

    :goto_1
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    move-object v10, v13

    .line 56
    .local v10, "addr":Ljava/net/InetAddress;
    move-object v13, v10

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_0

    .line 57
    move-object v13, v10

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 58
    .local v11, "sAddr":Ljava/lang/String;
    move-object v13, v11

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_1

    const/4 v13, 0x1

    :goto_2
    move v12, v13

    .line 59
    .local v12, "isIPv4":Z
    move v13, v2

    if-eqz v13, :cond_2

    .line 60
    move v13, v12

    if-eqz v13, :cond_0

    .line 61
    move-object v13, v11

    move-object v4, v13

    .line 69
    .end local v11    # "sAddr":Ljava/lang/String;
    .end local v12    # "isIPv4":Z
    :cond_0
    :goto_3
    goto :goto_1

    .line 58
    .restart local v11    # "sAddr":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 63
    .restart local v12    # "isIPv4":Z
    :cond_2
    move v13, v12

    if-nez v13, :cond_0

    .line 64
    move-object v13, v11

    const/16 v14, 0x25

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    move v3, v13

    .line 65
    move v13, v3

    if-gez v13, :cond_3

    move-object v13, v11

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    :goto_4
    move-object v4, v13

    goto :goto_3

    :cond_3
    move-object v13, v11

    const/4 v14, 0x0

    move v15, v3

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_4

    .line 70
    .end local v10    # "addr":Ljava/net/InetAddress;
    .end local v11    # "sAddr":Ljava/lang/String;
    .end local v12    # "isIPv4":Z
    :cond_4
    goto :goto_0

    .line 76
    .line 77
    .end local v5    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v7    # "intf":Ljava/net/NetworkInterface;
    .end local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_5
    :goto_5
    move-object v13, v4

    move-object v1, v13

    .end local v1    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    return-object v1

    .line 71
    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 72
    .local v5, "e":Ljava/net/SocketException;
    move-object v13, v5

    invoke-virtual {v13}, Ljava/net/SocketException;->printStackTrace()V

    .line 73
    move-object v13, v1

    iget-object v13, v13, Lcom/oseamiya/deviceinformation/NetworkInformation;->context:Landroid/content/Context;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    move-object v6, v13

    .line 74
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    move-object v13, v6

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v13

    move v7, v13

    .line 75
    .local v7, "ipAddress":I
    const-string/jumbo v13, "%d.%d.%d.%d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move/from16 v17, v7

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move/from16 v17, v7

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x2

    move/from16 v17, v7

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x3

    move/from16 v17, v7

    const/16 v18, 0x18

    shr-int/lit8 v17, v17, 0x18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    goto/16 :goto_5
.end method

.method public getServers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v2, v0

    invoke-direct {v2}, Lcom/oseamiya/deviceinformation/NetworkInformation;->getServersMethodSystemProperties()[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 93
    .local v1, "result":[Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    array-length v2, v2

    if-lez v2, :cond_0

    .line 94
    move-object v2, v1

    move-object v0, v2

    .line 108
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/oseamiya/deviceinformation/NetworkInformation;->getServersMethodConnectivityManager()[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 97
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    array-length v2, v2

    if-lez v2, :cond_1

    .line 99
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 102
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/oseamiya/deviceinformation/NetworkInformation;->getServersMethodExec()[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 103
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    array-length v2, v2

    if-lez v2, :cond_2

    .line 105
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 108
    :cond_2
    sget-object v2, Lcom/oseamiya/deviceinformation/NetworkInformation;->FACTORY_DNS_SERVERS:[Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public isADBDebuggingEnabled()Z
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/NetworkInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    return v0

    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVpnConnection()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/NetworkInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vpn_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/NetworkInformation;->isvpn1()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/NetworkInformation;->isvpn2()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    return v0

    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/NetworkInformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
