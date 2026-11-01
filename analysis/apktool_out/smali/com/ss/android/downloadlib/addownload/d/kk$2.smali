.class Lcom/ss/android/downloadlib/addownload/d/kk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d/kk;->dq(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/d/kk;

.field final synthetic dq:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/d/kk;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d/kk$2;->d:Lcom/ss/android/downloadlib/addownload/d/kk;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d/kk$2;->dq:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/kk$2;->d:Lcom/ss/android/downloadlib/addownload/d/kk;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d/kk;->dq(Lcom/ss/android/downloadlib/addownload/d/kk;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d/kk$2;->dq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
