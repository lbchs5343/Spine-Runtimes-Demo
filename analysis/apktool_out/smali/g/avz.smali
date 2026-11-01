.class public final Lg/avz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/Serializable;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/avz;->a:Ljava/io/Serializable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/avz;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/avz;->e:Z

    return-void
.end method

.method public constructor <init>(Lg/gmr;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/avz;->b:Ljava/lang/Object;

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p2, p0, Lg/avz;->a:Ljava/io/Serializable;

    iput-boolean p3, p0, Lg/avz;->c:Z

    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lg/avz;->b:Ljava/lang/Object;

    check-cast v0, Lg/gmr;

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lg/avz;->a:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lg/avz;->e:Z

    return-void
.end method

.method public g()Z
    .locals 3

    iget-boolean v0, p0, Lg/avz;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/avz;->d:Z

    iget-object v0, p0, Lg/avz;->b:Ljava/lang/Object;

    check-cast v0, Lg/gmr;

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lg/avz;->a:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lg/avz;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/avz;->e:Z

    :cond_0
    iget-boolean v0, p0, Lg/avz;->e:Z

    return v0
.end method
