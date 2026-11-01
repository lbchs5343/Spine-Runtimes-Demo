.class public final Lg/fou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final synthetic b:Lg/gmr;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public e:Z


# direct methods
.method public constructor <init>(Lg/gmr;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fou;->b:Lg/gmr;

    invoke-static {p2}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p2, p0, Lg/fou;->c:Ljava/lang/String;

    iput-wide p3, p0, Lg/fou;->d:J

    return-void
.end method


# virtual methods
.method public final f()J
    .locals 4

    iget-boolean v0, p0, Lg/fou;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fou;->e:Z

    iget-object v0, p0, Lg/fou;->b:Lg/gmr;

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lg/fou;->c:Ljava/lang/String;

    iget-wide v2, p0, Lg/fou;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lg/fou;->a:J

    :cond_0
    iget-wide v0, p0, Lg/fou;->a:J

    return-wide v0
.end method

.method public final g(J)V
    .locals 2

    iget-object v0, p0, Lg/fou;->b:Lg/gmr;

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lg/fou;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lg/fou;->a:J

    return-void
.end method
