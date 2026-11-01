.class public final synthetic Lg/bco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fbg;
.implements Lg/cbr;
.implements Lg/dcn;


# static fields
.field public static final a:Lg/bco;

.field public static final b:Lg/bco;

.field public static final c:Lg/bco;

.field public static final e:Lg/bco;

.field public static final f:Lg/bco;


# instance fields
.field public final synthetic g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bco;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    sput-object v0, Lg/bco;->e:Lg/bco;

    new-instance v0, Lg/bco;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    sput-object v0, Lg/bco;->a:Lg/bco;

    new-instance v0, Lg/bco;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    sput-object v0, Lg/bco;->b:Lg/bco;

    new-instance v0, Lg/bco;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    sput-object v0, Lg/bco;->c:Lg/bco;

    new-instance v0, Lg/bco;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    sput-object v0, Lg/bco;->f:Lg/bco;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/bco;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _bj(Lg/anf;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/bco;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Lg/anf;->k()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "accessibility_enable_failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {p1}, Lg/anf;->m()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
