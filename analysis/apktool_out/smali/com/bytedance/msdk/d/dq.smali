.class public final Lcom/bytedance/msdk/d/dq;
.super Ljava/lang/Object;


# direct methods
.method public static d(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "gdt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v0, "admob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "pangle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string v0, "mintegral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string v0, "unity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-string v0, "baidu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-string v0, "ks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-string v0, "sigmob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    const-string v0, "klevin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UnKnow"

    return-object p0

    :pswitch_1
    const-string p0, "InterstitialFull"

    return-object p0

    :pswitch_2
    const-string p0, "Draw"

    return-object p0

    :pswitch_3
    const-string p0, "FullVideo"

    return-object p0

    :pswitch_4
    const-string p0, "RewardVideo"

    return-object p0

    :pswitch_5
    const-string p0, "Native"

    return-object p0

    :pswitch_6
    const-string p0, "Splash"

    return-object p0

    :pswitch_7
    const-string p0, "Interstitial"

    return-object p0

    :pswitch_8
    const-string p0, "Banner"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static dq(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "gdt"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "admob"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "pangle"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "mintegral"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "unity"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "baidu"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "ks"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "sigmob"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "klevin"

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const-string p0, "custom"

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public static dq(II)Ljava/lang/String;
    .locals 4

    const-string v0, "Banner"

    const-string v1, "Draw"

    const-string v2, "Interstitial"

    const-string v3, "FullVideo"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_2
    return-object v1

    :pswitch_3
    return-object v3

    :pswitch_4
    const/4 p0, 0x6

    const-string v0, "RewardVideo"

    if-ne p1, p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x7

    if-ne p1, p0, :cond_3

    return-object v3

    :cond_3
    return-object v0

    :pswitch_5
    const/4 p0, 0x4

    const-string v2, "Native"

    if-ne p1, p0, :cond_4

    return-object v2

    :cond_4
    const/4 p0, 0x5

    if-ne p1, p0, :cond_5

    return-object v1

    :cond_5
    const/4 p0, 0x3

    if-ne p1, p0, :cond_6

    return-object v0

    :cond_6
    return-object v2

    :pswitch_6
    const-string p0, "Splash"

    return-object p0

    :pswitch_7
    return-object v2

    :pswitch_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;
    .locals 4

    const-string v0, "Banner"

    const-string v1, "NativeDraw"

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-ne p1, v2, :cond_0

    const-string p0, "InterstitialFull\u2014Interstitial"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "InterstitialFull\u2014FullVideo"

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_2
    return-object v1

    :pswitch_3
    const-string p0, "FullVideo"

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    const-string p2, "Reward_RewardVideo"

    if-ne p1, p0, :cond_2

    return-object p2

    :cond_2
    const/4 p0, 0x7

    if-ne p1, p0, :cond_3

    const-string p0, "Reward_FullVideo"

    return-object p0

    :cond_3
    return-object p2

    :pswitch_5
    const/4 p0, 0x4

    const-string v3, "Native-\u81ea\u6e32\u67d3"

    if-ne p1, p0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result p0

    if-ne p0, v2, :cond_4

    const-string p0, "Native-\u6a21\u677f\u6e32\u67d3"

    return-object p0

    :cond_4
    return-object v3

    :cond_5
    const/4 p0, 0x5

    if-ne p1, p0, :cond_6

    return-object v1

    :cond_6
    const/4 p0, 0x3

    if-ne p1, p0, :cond_7

    return-object v0

    :cond_7
    return-object v3

    :pswitch_6
    const-string p0, "Splash"

    return-object p0

    :pswitch_7
    const-string p0, "Interstitial"

    return-object p0

    :pswitch_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "gdt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "admob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "pangle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "mintegral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "unity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "baidu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "ks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "sigmob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "klevin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    return-object p0
.end method
