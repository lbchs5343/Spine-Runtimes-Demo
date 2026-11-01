.class public final Lcom/bytedance/pangle/util/b/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/pangle/util/b/b/d;Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/pangle/util/b/b/d;->a:Lcom/bytedance/pangle/util/b/b/a;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/util/b/b/d;->a:Lcom/bytedance/pangle/util/b/b/a;

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/pangle/util/b/b/c;

    iget-object v2, p0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const v4, 0x2014b50

    invoke-virtual {v2, p1, v4}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v2, p1, v4}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v2, p1, v4}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget v5, v1, Lcom/bytedance/pangle/util/b/b/c;->a:I

    invoke-virtual {v2, p1, v5}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v5, 0x821

    invoke-virtual {v2, p1, v5}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    const/16 v5, 0x221

    invoke-virtual {v2, p1, v5}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-wide v5, v1, Lcom/bytedance/pangle/util/b/b/c;->b:J

    long-to-int v6, v5

    invoke-virtual {v2, p1, v6}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    iget-wide v5, v1, Lcom/bytedance/pangle/util/b/b/c;->c:J

    long-to-int v6, v5

    invoke-virtual {v2, p1, v6}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    iget-wide v5, v1, Lcom/bytedance/pangle/util/b/b/c;->d:J

    long-to-int v6, v5

    invoke-virtual {v2, p1, v6}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    new-array v5, v4, [B

    iget-object v6, v1, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v5, v1, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    :cond_2
    array-length v6, v5

    invoke-virtual {v2, p1, v6}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget v6, v1, Lcom/bytedance/pangle/util/b/b/c;->f:I

    invoke-virtual {v2, p1, v6}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v2, p1, v4}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-wide v3, v1, Lcom/bytedance/pangle/util/b/b/c;->i:J

    long-to-int v1, v3

    invoke-virtual {v2, p1, v1}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    array-length v1, v5

    if-lez v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    if-lez v6, :cond_1

    new-array v1, v6, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "input parameters is null, cannot write local file header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
