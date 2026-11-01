.class public final Lg/csa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dwm;


# direct methods
.method public constructor <init>(Lg/dwm;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/csa;->a:Lg/dwm;

    return-void
.end method
