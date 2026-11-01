.class public final Lg/cxl;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:Lg/cnc;

.field public final b:Z

.field public final c:Lg/eyu;

.field public final d:Lg/cnc;

.field public final f:Lg/cnc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/eyu;Lg/cnc;Lg/cnc;Lg/cnc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cxl;->c:Lg/eyu;

    iput-object p3, p0, Lg/cxl;->d:Lg/cnc;

    iput-object p4, p0, Lg/cxl;->f:Lg/cnc;

    iput-object p5, p0, Lg/cxl;->a:Lg/cnc;

    iput-boolean p6, p0, Lg/cxl;->b:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 0

    new-instance p1, Lg/ejw;

    invoke-direct {p1, p3, p0}, Lg/ejw;-><init>(Lg/grq;Lg/cxl;)V

    return-object p1
.end method

.method public getType()Lg/eyu;
    .locals 1

    iget-object v0, p0, Lg/cxl;->c:Lg/eyu;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trim Path: {start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/cxl;->d:Lg/cnc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/cxl;->f:Lg/cnc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/cxl;->a:Lg/cnc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
