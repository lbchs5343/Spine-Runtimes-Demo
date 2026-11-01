.class public Lcom/bykv/vk/component/ttvideo/player/VendorQTI;
.super Ljava/lang/Object;


# static fields
.field private static final LEVEL_HIGH:I = 0x2

.field private static final LEVEL_LITE:I = 0x0

.field private static final LEVEL_MIDIUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VendorQTI"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugEffect(Landroid/media/MediaFormat;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "vendor.qti-ext-vpp-demo.process-percent"

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public static enableLowLatency(Landroid/media/MediaFormat;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "vendor.qti-ext-dec-low-latency.enable"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public static setupVpp(Landroid/media/MediaFormat;I)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "vendor.qti-ext-vpp.mode"

    const-string v1, "HQV_MODE_MANUAL"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x32

    const-string v1, "vendor.qti-ext-vpp-aie.ltm-ace-str"

    const-string v2, "vendor.qti-ext-vpp-aie.ltm-sat-offset"

    const-string v3, "vendor.qti-ext-vpp-aie.ltm-sat-gain"

    const-string v4, "vendor.qti-ext-vpp-cade.cade-level"

    const/16 v5, 0x14

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    if-eq p1, v6, :cond_2

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 p1, 0xf

    invoke-virtual {p0, v4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x46

    invoke-virtual {p0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    const/16 p1, 0xa

    goto :goto_1

    :cond_3
    const/16 p1, 0x14

    :goto_1
    invoke-virtual {p0, v4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x41

    invoke-virtual {p0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x3c

    invoke-virtual {p0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_2
    const-string p1, "vendor.qti-ext-vpp-aie.ltm-ace-brightness-low"

    invoke-virtual {p0, p1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "vendor.qti-ext-vpp-aie.ltm-ace-brightness-high"

    invoke-virtual {p0, p1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method
