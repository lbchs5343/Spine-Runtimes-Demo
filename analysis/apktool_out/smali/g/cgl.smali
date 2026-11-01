.class public abstract synthetic Lg/cgl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lg/amw;->_cq:I

    return-void
.end method

.method public static b(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lg/gbs;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :catchall_0
    sget p0, Lg/gbs;->a:I

    return-object v0
.end method

.method public static c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;
    .locals 3

    :try_start_0
    invoke-static {}, Lg/aho;->c()Lg/gwg;

    move-result-object v0

    iget v1, p2, Lg/ejd;->a:I

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v2, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/aho;

    invoke-static {v2, v1}, Lg/aho;->f(Lg/aho;I)V

    iget-object v1, p2, Lg/ejd;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v2, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/aho;

    invoke-static {v2, v1}, Lg/aho;->a(Lg/aho;Ljava/lang/String;)V

    iget p2, p2, Lg/ejd;->b:I

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v1, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/aho;

    invoke-static {v1, p2}, Lg/aho;->d(Lg/aho;I)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object p2, v0, Lg/dtx;->d:Lg/fsu;

    check-cast p2, Lg/aho;

    invoke-static {p2, p0}, Lg/aho;->e(Lg/aho;Lg/hm;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object p0, v0, Lg/dtx;->d:Lg/fsu;

    check-cast p0, Lg/aho;

    invoke-static {p0, p3}, Lg/aho;->b(Lg/aho;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lg/hd;->b()Lg/ari;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg/ari;->a(Lg/gwg;)V

    invoke-virtual {p0}, Lg/dtx;->f()V

    iget-object p2, p0, Lg/dtx;->d:Lg/fsu;

    check-cast p2, Lg/hd;

    invoke-static {p2, p1}, Lg/hd;->f(Lg/hd;I)V

    sget-object p1, Lg/apl;->zza:Lg/apl;

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lg/dtx;->f()V

    iget-object p1, p0, Lg/dtx;->d:Lg/fsu;

    check-cast p1, Lg/hd;

    invoke-static {p1, p4}, Lg/hd;->d(Lg/hd;Lg/apl;)V

    :cond_3
    invoke-virtual {p0}, Lg/dtx;->g()Lg/fsu;

    move-result-object p0

    check-cast p0, Lg/hd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    sget p0, Lg/gbs;->a:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(ILg/apl;)Lg/eag;
    .locals 2

    :try_start_0
    invoke-static {}, Lg/eag;->b()Lg/gza;

    move-result-object v0

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v1, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/eag;

    invoke-static {v1, p0}, Lg/eag;->e(Lg/eag;I)V

    sget-object p0, Lg/apl;->zza:Lg/apl;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object p0, v0, Lg/dtx;->d:Lg/fsu;

    check-cast p0, Lg/eag;

    invoke-static {p0, p1}, Lg/eag;->a(Lg/eag;Lg/apl;)V

    :cond_0
    invoke-virtual {v0}, Lg/dtx;->g()Lg/fsu;

    move-result-object p0

    check-cast p0, Lg/eag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget p0, Lg/gbs;->a:I

    const/4 p0, 0x0

    return-object p0
.end method
