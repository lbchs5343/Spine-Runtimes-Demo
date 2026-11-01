.class public final Lg/ejd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public static d()Lg/gvg;
    .locals 2

    new-instance v0, Lg/gvg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/gvg;-><init>(I)V

    const/4 v1, 0x0

    iput v1, v0, Lg/gvg;->b:I

    const-string v1, ""

    iput-object v1, v0, Lg/gvg;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/ejd;->a:I

    sget v1, Lg/gbs;->a:I

    sget-object v1, Lg/bpd;->a:Lg/cil;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/cil;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lg/bpd;->zza:Lg/bpd;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lg/cil;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bpd;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/ejd;->c:Ljava/lang/String;

    const-string v2, "Response Code: "

    const-string v3, ", Debug Message: "

    invoke-static {v2, v0, v3, v1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
