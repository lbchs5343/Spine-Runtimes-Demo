.class public Lms/bz/bd/c/Pgl/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bz/bd/c/Pgl/a$pgla;,
        Lms/bz/bd/c/Pgl/a$pblb;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/HashSet;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lms/bz/bd/c/Pgl/a;->c:I

    const v0, 0x1869f

    iput v0, p0, Lms/bz/bd/c/Pgl/a;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/a;->f:Ljava/util/HashSet;

    return-void
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
