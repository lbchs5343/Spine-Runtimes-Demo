.class public final Lg/fms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:Lg/bsa;

.field public final synthetic b:I

.field public c:I


# direct methods
.method public synthetic constructor <init>(Lg/bsa;I)V
    .locals 0

    iput p2, p0, Lg/fms;->b:I

    iput-object p1, p0, Lg/fms;->a:Lg/bsa;

    const/4 p1, 0x0

    iput p1, p0, Lg/fms;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/fms;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/fms;->c:I

    iget-object v1, p0, Lg/fms;->a:Lg/bsa;

    iget-object v1, v1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lg/fms;->c:I

    iget-object v1, p0, Lg/fms;->a:Lg/bsa;

    iget-object v1, v1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/fms;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/fms;->c:I

    iget-object v1, p0, Lg/fms;->a:Lg/bsa;

    iget-object v2, v1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lg/bsa;

    iget-object v1, v1, Lg/bsa;->a:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lg/fms;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget v0, p0, Lg/fms;->c:I

    iget-object v1, p0, Lg/fms;->a:Lg/bsa;

    iget-object v1, v1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lg/bsa;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/fms;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
