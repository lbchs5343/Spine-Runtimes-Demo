.class public final synthetic Lg/dsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lg/chp;


# direct methods
.method public synthetic constructor <init>(Lg/chp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dsi;->a:Lg/chp;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lg/dsi;->a:Lg/chp;

    iput-boolean v0, v1, Lg/chp;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lg/chp;->c:J

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lg/chp;->am(Z)V

    return-void
.end method
