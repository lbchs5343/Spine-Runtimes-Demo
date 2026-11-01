.class public final Lg/fic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/efi;


# instance fields
.field public final a:Lg/axr;

.field public final b:Lg/efi;


# direct methods
.method public constructor <init>(Lg/efi;Lg/and;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lg/axr;

    iput-object p2, p0, Lg/fic;->a:Lg/axr;

    instance-of p2, p1, Lg/fic;

    if-eqz p2, :cond_0

    check-cast p1, Lg/fic;

    iget-object p1, p1, Lg/fic;->b:Lg/efi;

    :cond_0
    iput-object p1, p0, Lg/fic;->b:Lg/efi;

    return-void
.end method
