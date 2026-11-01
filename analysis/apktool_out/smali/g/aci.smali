.class public final Lg/aci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/gxm;


# direct methods
.method public constructor <init>(Lg/gxm;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aci;->a:Lg/gxm;

    return-void
.end method
