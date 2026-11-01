.class public final Lg/cad;
.super Ljava/lang/Object;

# interfaces
.implements Lms/bz/bd/c/Pgl/n0$pgla;


# instance fields
.field public final a:Lms/bz/bd/c/Pgl/m0;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cad;->a:Lms/bz/bd/c/Pgl/m0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lg/cad;->a:Lms/bz/bd/c/Pgl/m0;

    iget-wide v1, v0, Lms/bz/bd/c/Pgl/m0;->a:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v4, v0, Lms/bz/bd/c/Pgl/m0;->a:J

    iget-object v7, v0, Lms/bz/bd/c/Pgl/m0;->b:Landroid/content/Context;

    sget-object v0, Lms/bz/bd/c/Pgl/pblb;->a:Landroid/util/SparseArray;

    const v2, 0x2000001

    const/4 v3, 0x0

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
