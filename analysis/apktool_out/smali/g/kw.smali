.class public final Lg/kw;
.super Lg/cwp;
.source "SourceFile"


# instance fields
.field public final a:Lg/ewi;


# direct methods
.method public constructor <init>(Lg/ewi;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lg/cwp;-><init>(I)V

    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p1, p0, Lg/kw;->a:Lg/ewi;

    return-void
.end method
