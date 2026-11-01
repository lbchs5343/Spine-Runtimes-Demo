.class public Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader$DefaultLibraryLoader;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEGRADED_VERSION:I = 0xb6d

.field private static IsErrored:Z = false

.field private static final TAG:Ljava/lang/String; = "TTPlayerLibraryLoader"

.field private static mDebugLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

.field private static mDefaultLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

.field private static mErrorInfo:Ljava/lang/String;

.field private static mLibraryLoaded:Z

.field private static mLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

.field private static mPluginLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

.field private static mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader$DefaultLibraryLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader$DefaultLibraryLoader;-><init>(Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader$1;)V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mDefaultLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoaded:Z

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->IsErrored:Z

    sput-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    sput v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getErrorInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static isError()Z
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->IsErrored:Z

    return v0
.end method

.method public static final declared-synchronized loadLibrary()V
    .locals 5

    const-class v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mVersion:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0xd

    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mVersion:I

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    sget v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mVersion:I

    const/16 v4, 0xb6d

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    const-string v2, "ttopenssl"

    invoke-static {v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->loadPlayerlibrary(Ljava/lang/String;)Z

    const-string v2, "mffmpeg"

    invoke-static {v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->loadPlayerlibrary(Ljava/lang/String;)Z

    :cond_2
    const-string v2, "ttmplayer"

    invoke-static {v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->loadPlayerlibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sput-boolean v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->IsErrored:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_4

    const-string v2, "ttopenssl"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "mffmpeg"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "ttmplayer"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->loadLibs(Ljava/util/List;Z)Z

    move-result v2

    xor-int/2addr v2, v1

    sput-boolean v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->IsErrored:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    :try_start_2
    sput-boolean v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->IsErrored:Z

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load default library error."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static loadLibs(Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoaded:Z

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1, p0}, Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result p0

    sput-boolean p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mPluginLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1, p0}, Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result p0

    sput-boolean p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mDefaultLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    invoke-interface {p1, p0}, Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result p0

    sput-boolean p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoaded:Z

    :goto_0
    sget-boolean p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoaded:Z

    return p0
.end method

.method private static loadPlayerlibrary(Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    const-string v0, "lib"

    const-string v1, ".so"

    invoke-static {v0, p0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setLibraryName(Ljava/lang/String;)V

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->checkDebugTTPlayerLib()V

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getPlayerLibraryPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mDebugLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mDebugLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    invoke-interface {v3, v2}, Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    goto :goto_2

    :cond_1
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load path library error."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->loadLibs(Ljava/util/List;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mErrorInfo:Ljava/lang/String;

    goto :goto_3

    :catchall_1
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->TAG:Ljava/lang/String;

    const-string v1, "load lib failed name = "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_3
    return v2
.end method

.method public static final setDebugLibraryLoader(Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mDebugLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    return-void
.end method

.method public static final setLibraryLoader(Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mLibraryLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    return-void
.end method

.method public static final setPluginLibraryLoader(Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibraryLoader;->mPluginLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    return-void
.end method
