.class public final Lg/dkw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dkw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/dkw;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dkw;->a:Lg/dkw;

    return-void
.end method


# virtual methods
.method public final b(Lg/and;Lg/and;Lg/cvw;Lg/cvw;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/and;",
            "Lg/and;",
            "Lg/cvw;",
            "Lg/cvw;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string v0, "onBackStarted"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackProgressed"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackInvoked"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackCancelled"

    invoke-static {p4, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/gru;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/gru;-><init>(Lg/and;Lg/and;Lg/cvw;Lg/cvw;)V

    return-object v0
.end method
