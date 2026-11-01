.class public final Lcom/bytedance/pangle/util/b/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/bytedance/pangle/util/b/b/d;

.field final b:Lcom/bytedance/pangle/util/b/a/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/util/b/b/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    new-instance p1, Lcom/bytedance/pangle/util/b/a/b;

    invoke-direct {p1}, Lcom/bytedance/pangle/util/b/a/b;-><init>()V

    iput-object p1, p0, Lcom/bytedance/pangle/util/b/a;->b:Lcom/bytedance/pangle/util/b/a/b;

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "Could not delete temporary file"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;JJLjava/lang/String;)V
    .locals 0

    add-long/2addr p4, p2

    invoke-static/range {p0 .. p6}, Lcom/bytedance/pangle/util/g;->a(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;JJLjava/lang/String;)V

    return-void
.end method
