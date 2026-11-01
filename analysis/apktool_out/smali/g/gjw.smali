.class public final Lg/gjw;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dpy;


# instance fields
.field public final a:Lg/dlz;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/graphics/Path$FillType;

.field public final f:Lg/dlz;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lg/dlz;Lg/dlz;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lg/gjw;->c:Z

    iput-object p3, p0, Lg/gjw;->d:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lg/gjw;->f:Lg/dlz;

    iput-object p5, p0, Lg/gjw;->a:Lg/dlz;

    iput-boolean p6, p0, Lg/gjw;->b:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/fts;Lg/cgf;Lg/grq;)Lg/dvz;
    .locals 0

    new-instance p2, Lg/vl;

    invoke-direct {p2, p1, p3, p0}, Lg/vl;-><init>(Lg/fts;Lg/grq;Lg/gjw;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lg/gjw;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
