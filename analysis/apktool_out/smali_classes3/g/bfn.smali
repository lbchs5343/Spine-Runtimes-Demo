.class public final Lg/bfn;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public final a:Lg/dfu;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->z:Lg/esy;

    invoke-virtual {v0, p1, p2}, Lg/esy;->at(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-direct {p0, p2}, Lg/bgf;-><init>(I)V

    new-instance p2, Lg/dfu;

    invoke-direct {p2, p1}, Lg/dfu;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lg/bfn;->a:Lg/dfu;

    iput-object p3, p0, Lg/bfn;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lg/bfn;->a:Lg/dfu;

    iget-object v1, p0, Lg/bfn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/dfu;->zza(Ljava/lang/String;)Z

    return-void
.end method
