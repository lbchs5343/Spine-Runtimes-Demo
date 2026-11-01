.class public Lcom/bykv/vk/component/ttvideo/LibraryLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibraryLoader"

.field private static sLoader:Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/component/ttvideo/LibraryLoader;->sLoader:Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid library name."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadLibraryFromPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/component/ttvideo/LibraryLoader;->sLoader:Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;->loadLibraryFromPath(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not found library \'"

    const-string v2, "\' file."

    invoke-static {v1, p0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid library name."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setupLibraryLoader(Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/LibraryLoader;->sLoader:Lcom/bykv/vk/component/ttvideo/LibraryLoader$Loader;

    return-void
.end method
