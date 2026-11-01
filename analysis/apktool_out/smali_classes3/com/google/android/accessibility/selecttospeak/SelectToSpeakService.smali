.class public Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;
.super Lg/dbz;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gk;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lg/gk;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
