.class Lcom/ss/android/socialbase/appdownloader/ia$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/ia;->dq(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Z

.field final synthetic p:Lcom/ss/android/socialbase/appdownloader/ia;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/ia;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->p:Lcom/ss/android/socialbase/appdownloader/ia;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->dq:Landroid/content/Context;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->d:I

    iput-boolean p4, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->ox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->p:Lcom/ss/android/socialbase/appdownloader/ia;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->dq:Landroid/content/Context;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->d:I

    iget-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/ia$4;->ox:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/ia;->dq(Landroid/content/Context;IZ)I

    return-void
.end method
