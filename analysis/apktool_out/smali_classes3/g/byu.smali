.class public final Lg/byu;
.super Lg/ckb;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "orientation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/byu;->a:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lg/byu;->b:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lg/ckb;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final d(Lg/fpu;)Z
    .locals 2

    iget v0, p0, Lg/byu;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lg/fpu;I)Lg/fkn;
    .locals 8

    iget p2, p0, Lg/byu;->b:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lg/ckb;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p1, Lg/fpu;->a:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lg/baf;->bk(Ljava/io/InputStream;)Lg/dix;

    move-result-object p2

    new-instance v0, Lg/fkn;

    sget-object v1, Lg/gye;->DISK:Lg/gye;

    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    new-instance v2, Lg/jo;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lg/jo;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    invoke-virtual {v2, p1}, Lg/jo;->ai(Ljava/lang/String;)Lg/ebm;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, v2, Lg/jo;->v:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Lg/ebm;->h(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1, p1}, Lg/fkn;-><init>(Landroid/graphics/Bitmap;Lg/cpv;Lg/gye;I)V

    return-object v0

    :pswitch_0
    iget-object p2, p0, Lg/ckb;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lg/fpu;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    sget-object v2, Lg/byu;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v7, v2

    goto :goto_4

    :catch_1
    nop

    goto :goto_5

    :cond_2
    :goto_3
    if-eqz v2, :cond_4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :catch_2
    nop

    move-object v2, v7

    goto :goto_5

    :goto_4
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    :goto_5
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p1, p1, Lg/fpu;->a:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lg/baf;->bk(Ljava/io/InputStream;)Lg/dix;

    move-result-object p1

    new-instance p2, Lg/fkn;

    sget-object v0, Lg/gye;->DISK:Lg/gye;

    invoke-direct {p2, v7, p1, v0, v6}, Lg/fkn;-><init>(Landroid/graphics/Bitmap;Lg/cpv;Lg/gye;I)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
