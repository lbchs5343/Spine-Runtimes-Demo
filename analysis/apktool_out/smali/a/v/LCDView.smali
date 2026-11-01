.class public La/v/LCDView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/v/LCDView$FontInfo;
    }
.end annotation


# static fields
.field public static DEFAULT_TIME_FORMAT:Ljava/lang/String; = null

.field public static final FONT_TYPE_DIGITAL:Ljava/lang/String; = "lcd"

.field private static final FONT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/v/LCDView$FontInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FONT_TYPE_REGULAR:Ljava/lang/String; = "regular"

.field public static final GRAVITY_CENTER:I = 0x11

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x1

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x10

.field public static final GRAVITY_DEFAULT:I


# instance fields
.field private choreographer:Landroid/view/Choreographer;

.field private context:Landroid/content/Context;

.field private customTimeText:Ljava/lang/String;

.field private disturbBgPaint:Landroid/graphics/Paint;

.field private gravity:I

.field private isPaused:Z

.field private isRemindEnabled:Z

.field private isRemindVibrate:Z

.field private isShowDisturbBg:Z

.field private lastIsRemind:Z

.field private paint:Landroid/graphics/Paint;

.field private remindColor:I

.field private remindHour:I

.field private remindMillisecond:I

.field private remindMinute:I

.field private remindPaint:Landroid/graphics/Paint;

.field private remindSecond:I

.field private singleNumberWidth:F

.field private textColor:I

.field private textFontType:Ljava/lang/String;

.field private textSize:F

.field private timeFormat:Ljava/lang/String;

.field private timeOffsetInMs:J

.field private vibrator:Landroid/os/Vibrator;

.field private xBegin:F

.field private xSpacing:F

.field private yBegin:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/v/LCDView;->FONT_TYPE_MAP:Ljava/util/Map;

    new-instance v1, La/v/LCDView$FontInfo;

    const-string v2, ""

    const-string v3, "regular"

    invoke-direct {v1, v3, v2}, La/v/LCDView$FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, La/v/LCDView$FontInfo;

    const-string v2, "fonts/digital.ttf"

    const-string v3, "lcd"

    invoke-direct {v1, v3, v2}, La/v/LCDView$FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "07:05:23.2"

    sput-object v0, La/v/LCDView;->DEFAULT_TIME_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v/LCDView;->isPaused:Z

    sget-object v1, La/v/LCDView;->DEFAULT_TIME_FORMAT:Ljava/lang/String;

    iput-object v1, p0, La/v/LCDView;->timeFormat:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, La/v/LCDView;->textSize:F

    const/4 v1, 0x0

    iput v1, p0, La/v/LCDView;->singleNumberWidth:F

    const/high16 v2, -0x1000000

    iput v2, p0, La/v/LCDView;->textColor:I

    const-string v2, "regular"

    iput-object v2, p0, La/v/LCDView;->textFontType:Ljava/lang/String;

    iput-boolean v0, p0, La/v/LCDView;->isShowDisturbBg:Z

    const/high16 v2, -0x10000

    iput v2, p0, La/v/LCDView;->remindColor:I

    iput-boolean v0, p0, La/v/LCDView;->isRemindVibrate:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, La/v/LCDView;->timeOffsetInMs:J

    const/4 v2, 0x0

    iput-object v2, p0, La/v/LCDView;->customTimeText:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, La/v/LCDView;->isRemindEnabled:Z

    const/4 v3, -0x1

    iput v3, p0, La/v/LCDView;->remindHour:I

    iput v3, p0, La/v/LCDView;->remindMinute:I

    iput v3, p0, La/v/LCDView;->remindSecond:I

    iput v3, p0, La/v/LCDView;->remindMillisecond:I

    iput-boolean v0, p0, La/v/LCDView;->lastIsRemind:Z

    iput v1, p0, La/v/LCDView;->xBegin:F

    invoke-direct {p0, p1, v2}, La/v/LCDView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v/LCDView;->isPaused:Z

    sget-object v1, La/v/LCDView;->DEFAULT_TIME_FORMAT:Ljava/lang/String;

    iput-object v1, p0, La/v/LCDView;->timeFormat:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, La/v/LCDView;->textSize:F

    const/4 v1, 0x0

    iput v1, p0, La/v/LCDView;->singleNumberWidth:F

    const/high16 v2, -0x1000000

    iput v2, p0, La/v/LCDView;->textColor:I

    const-string v2, "regular"

    iput-object v2, p0, La/v/LCDView;->textFontType:Ljava/lang/String;

    iput-boolean v0, p0, La/v/LCDView;->isShowDisturbBg:Z

    const/high16 v2, -0x10000

    iput v2, p0, La/v/LCDView;->remindColor:I

    iput-boolean v0, p0, La/v/LCDView;->isRemindVibrate:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, La/v/LCDView;->timeOffsetInMs:J

    const/4 v2, 0x0

    iput-object v2, p0, La/v/LCDView;->customTimeText:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, La/v/LCDView;->isRemindEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, La/v/LCDView;->remindHour:I

    iput v2, p0, La/v/LCDView;->remindMinute:I

    iput v2, p0, La/v/LCDView;->remindSecond:I

    iput v2, p0, La/v/LCDView;->remindMillisecond:I

    iput-boolean v0, p0, La/v/LCDView;->lastIsRemind:Z

    iput v1, p0, La/v/LCDView;->xBegin:F

    invoke-direct {p0, p1, p2}, La/v/LCDView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static fillToTwoDigital(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-ltz p0, :cond_0

    const-string v0, "0"

    invoke-static {p0, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTextSizeInDp(Landroid/content/Context;)F
    .locals 1

    invoke-static {p0}, La/v/LCDView;->getDefaultTextSizeInPx(Landroid/content/Context;)F

    move-result v0

    invoke-static {p0, v0}, Lg/fso;->ab(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method public static getDefaultTextSizeInDp(Landroid/content/Context;Ljava/lang/String;)F
    .locals 0

    invoke-static {p0, p1}, La/v/LCDView;->getDefaultTextSizeInPx(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-static {p0, p1}, Lg/fso;->ab(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method public static getDefaultTextSizeInPx(Landroid/content/Context;)F
    .locals 1

    sget-object v0, La/v/LCDView;->DEFAULT_TIME_FORMAT:Ljava/lang/String;

    invoke-static {p0, v0}, La/v/LCDView;->getDefaultTextSizeInPx(Landroid/content/Context;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getDefaultTextSizeInPx(Landroid/content/Context;Ljava/lang/String;)F
    .locals 10

    invoke-static {p0}, Lg/fso;->ar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x3f266666    # 0.65f

    mul-float p0, p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/2addr p0, p1

    int-to-float p0, p0

    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_4

    add-float v3, v0, v1

    div-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float v5, v4, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double v9, v5, v7

    if-gez v9, :cond_2

    return v3

    :cond_2
    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, p0

    if-gez v4, :cond_3

    add-float/2addr v3, v5

    move v0, v3

    goto :goto_1

    :cond_3
    sub-float/2addr v3, v5

    move v1, v3

    :goto_1
    sub-float v3, v1, v0

    float-to-double v3, v3

    cmpg-double v5, v3, v7

    if-gez v5, :cond_1

    :cond_4
    add-float/2addr v0, v1

    div-float/2addr v0, v2

    return v0
.end method

.method private getShowTime()Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, La/v/LCDView;->customTimeText:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Pair;

    iget-object v3, v0, La/v/LCDView;->customTimeText:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-wide v3, v0, La/v/LCDView;->timeOffsetInMs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-wide v5, v0, La/v/LCDView;->timeOffsetInMs:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    iget-object v3, v0, La/v/LCDView;->context:Landroid/content/Context;

    const-string v4, "24_hour_format"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0xb

    const/16 v6, 0xa

    if-eqz v3, :cond_2

    const/16 v7, 0xb

    goto :goto_0

    :cond_2
    const/16 v7, 0xa

    :goto_0
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    if-nez v3, :cond_3

    if-nez v7, :cond_3

    const/16 v7, 0xc

    :cond_3
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    if-lt v9, v10, :cond_4

    const/4 v9, 0x0

    :cond_4
    div-int/lit8 v10, v9, 0xa

    int-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Calendar;

    iget v13, v0, La/v/LCDView;->remindHour:I

    if-ltz v13, :cond_5

    invoke-virtual {v12, v4, v13}, Ljava/util/Calendar;->set(II)V

    :cond_5
    iget v4, v0, La/v/LCDView;->remindMinute:I

    if-ltz v4, :cond_6

    invoke-virtual {v12, v8, v4}, Ljava/util/Calendar;->set(II)V

    :cond_6
    iget v4, v0, La/v/LCDView;->remindSecond:I

    const/16 v13, 0xd

    if-ltz v4, :cond_7

    invoke-virtual {v12, v13, v4}, Ljava/util/Calendar;->set(II)V

    :cond_7
    iget v4, v0, La/v/LCDView;->remindMillisecond:I

    if-ltz v4, :cond_8

    invoke-virtual {v12, v3, v4}, Ljava/util/Calendar;->set(II)V

    :cond_8
    invoke-virtual {v12}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    const/16 v14, 0x3e7

    invoke-virtual {v4, v3, v14}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-ltz v3, :cond_c

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gtz v3, :cond_c

    iget v3, v0, La/v/LCDView;->remindHour:I

    if-ltz v3, :cond_9

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    :goto_2
    const/4 v12, 0x0

    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_9
    iget v3, v0, La/v/LCDView;->remindMinute:I

    if-ltz v3, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    iget v3, v0, La/v/LCDView;->remindSecond:I

    if-ltz v3, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_3

    :cond_b
    iget v3, v0, La/v/LCDView;->remindMillisecond:I

    if-ltz v3, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    goto :goto_1

    :goto_4
    iget-object v15, v0, La/v/LCDView;->timeFormat:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, 0x9

    const/16 v18, 0x6

    const/16 v19, 0x3

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v5, "07:05:23.2"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0xa

    goto/16 :goto_6

    :sswitch_1
    const-string v5, "05:23.2"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x3

    goto :goto_6

    :sswitch_2
    const-string v6, "07:05:23"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_6

    :sswitch_3
    const-string v5, "23.24"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x8

    goto :goto_6

    :sswitch_4
    const-string v5, "07:05"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_6

    :sswitch_5
    const-string v5, "23.2"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x4

    goto :goto_6

    :sswitch_6
    const-string v5, "24"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x9

    goto :goto_6

    :sswitch_7
    const-string v5, "23"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x2

    goto :goto_6

    :sswitch_8
    const-string v5, "2"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x5

    goto :goto_6

    :sswitch_9
    const-string v5, "05:23.24"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x7

    goto :goto_6

    :sswitch_a
    const-string v5, "07:05:23.24"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x6

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v5, -0x1

    :goto_6
    const-string v6, "."

    const-string v15, ":"

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_f

    :cond_e
    :goto_7
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_f
    if-eqz v4, :cond_10

    :goto_8
    const/4 v2, 0x3

    goto/16 :goto_b

    :cond_10
    if-eqz v12, :cond_11

    :goto_9
    const/4 v2, 0x6

    goto/16 :goto_b

    :cond_11
    if-eqz v14, :cond_1e

    :goto_a
    const/16 v2, 0x9

    goto/16 :goto_b

    :pswitch_0
    invoke-static {v9}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    if-nez v12, :cond_e

    if-eqz v14, :cond_1e

    goto :goto_7

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    if-eqz v12, :cond_12

    goto :goto_7

    :cond_12
    if-eqz v14, :cond_1e

    goto :goto_8

    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    if-eqz v12, :cond_14

    goto :goto_8

    :cond_14
    if-eqz v14, :cond_1e

    goto :goto_9

    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_15

    goto/16 :goto_7

    :cond_15
    if-eqz v4, :cond_16

    goto/16 :goto_8

    :cond_16
    if-eqz v12, :cond_17

    goto/16 :goto_9

    :cond_17
    if-eqz v14, :cond_1e

    goto/16 :goto_a

    :pswitch_4
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    if-nez v12, :cond_e

    if-eqz v14, :cond_1e

    goto/16 :goto_7

    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    if-eqz v12, :cond_18

    goto/16 :goto_7

    :cond_18
    if-eqz v14, :cond_1e

    goto/16 :goto_8

    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-eqz v4, :cond_19

    goto/16 :goto_7

    :cond_19
    if-eqz v12, :cond_1a

    goto/16 :goto_8

    :cond_1a
    if-eqz v14, :cond_1e

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    if-nez v12, :cond_e

    if-eqz v14, :cond_1e

    goto/16 :goto_7

    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1b

    goto/16 :goto_7

    :cond_1b
    if-eqz v4, :cond_1c

    goto/16 :goto_8

    :cond_1c
    if-eqz v12, :cond_1e

    goto/16 :goto_9

    :pswitch_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, La/v/LCDView;->fillToTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1d

    goto/16 :goto_7

    :cond_1d
    if-eqz v4, :cond_1e

    goto/16 :goto_8

    :cond_1e
    :goto_b
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2e21cc93 -> :sswitch_a
        -0x2c4bc4a6 -> :sswitch_9
        0x32 -> :sswitch_8
        0x641 -> :sswitch_7
        0x642 -> :sswitch_6
        0x177fc5 -> :sswitch_5
        0x2be4858 -> :sswitch_4
        0x2d8790f -> :sswitch_3
        0x3d6598a3 -> :sswitch_2
        0x48e4c81a -> :sswitch_1
        0x7a6201a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSingleNumberWidth(Landroid/graphics/Paint;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSingleTextWidth(C)F
    .locals 1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, La/v/LCDView;->singleNumberWidth:F

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    iput-object p1, p0, La/v/LCDView;->context:Landroid/content/Context;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lg/cjh;->a:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, La/v/LCDView;->textSize:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, La/v/LCDView;->timeFormat:Ljava/lang/String;

    invoke-static {p1, v1}, La/v/LCDView;->getDefaultTextSizeInPx(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, La/v/LCDView;->textSize:F

    :cond_0
    iget p1, p0, La/v/LCDView;->textColor:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, La/v/LCDView;->textColor:I

    iget p1, p0, La/v/LCDView;->remindColor:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, La/v/LCDView;->remindColor:I

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, La/v/LCDView;->gravity:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    iget p2, p0, La/v/LCDView;->textSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    iget p2, p0, La/v/LCDView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    iget-object p2, p0, La/v/LCDView;->textFontType:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, La/v/LCDView;->setPaintFontType(Landroid/graphics/Paint;Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, La/v/LCDView;->disturbBgPaint:Landroid/graphics/Paint;

    iget p2, p0, La/v/LCDView;->textColor:I

    const v0, 0x1affffff

    and-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, La/v/LCDView;->remindPaint:Landroid/graphics/Paint;

    iget p2, p0, La/v/LCDView;->remindColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, La/v/LCDView;->choreographer:Landroid/view/Choreographer;

    iget-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, La/v/LCDView;->getSingleNumberWidth(Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, La/v/LCDView;->singleNumberWidth:F

    const/4 p1, 0x0

    iput p1, p0, La/v/LCDView;->xSpacing:F

    return-void
.end method

.method private setPaintFontType(Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 1

    sget-object v0, La/v/LCDView;->FONT_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/v/LCDView$FontInfo;

    if-eqz p2, :cond_1

    invoke-static {p2}, La/v/LCDView$FontInfo;->a(La/v/LCDView$FontInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, La/v/LCDView$FontInfo;->a(La/v/LCDView$FontInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-boolean p1, p0, La/v/LCDView;->isPaused:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, La/v/LCDView;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public getAllTextWidth()F
    .locals 4

    invoke-direct {p0}, La/v/LCDView;->getShowTime()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    iget v3, p0, La/v/LCDView;->xSpacing:F

    add-float/2addr v1, v3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, La/v/LCDView;->getSingleTextWidth(C)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCustomTimeText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/v/LCDView;->customTimeText:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindHour()I
    .locals 1

    iget v0, p0, La/v/LCDView;->remindHour:I

    return v0
.end method

.method public getRemindMillisecond()I
    .locals 1

    iget v0, p0, La/v/LCDView;->remindMillisecond:I

    return v0
.end method

.method public getRemindMinute()I
    .locals 1

    iget v0, p0, La/v/LCDView;->remindMinute:I

    return v0
.end method

.method public getRemindSecond()I
    .locals 1

    iget v0, p0, La/v/LCDView;->remindSecond:I

    return v0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/v/LCDView;->timeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffsetInMs()J
    .locals 2

    iget-wide v0, p0, La/v/LCDView;->timeOffsetInMs:J

    return-wide v0
.end method

.method public isRemindEnabled()Z
    .locals 1

    iget-boolean v0, p0, La/v/LCDView;->isRemindEnabled:Z

    return v0
.end method

.method public isShowDisturbBg()Z
    .locals 1

    iget-boolean v0, p0, La/v/LCDView;->isShowDisturbBg:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v/LCDView;->isPaused:Z

    iget-object v0, p0, La/v/LCDView;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v/LCDView;->isPaused:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, La/v/LCDView;->xBegin:F

    invoke-direct {p0}, La/v/LCDView;->getShowTime()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-boolean v7, p0, La/v/LCDView;->isShowDisturbBg:Z

    if-eqz v7, :cond_0

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, La/v/LCDView;->yBegin:F

    iget-object v8, p0, La/v/LCDView;->disturbBgPaint:Landroid/graphics/Paint;

    const-string v9, "8"

    invoke-virtual {p1, v9, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v7, p0, La/v/LCDView;->isRemindEnabled:Z

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_1

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v4, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iget v7, p0, La/v/LCDView;->yBegin:F

    if-eqz v6, :cond_2

    iget-object v8, p0, La/v/LCDView;->remindPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_2
    iget-object v8, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v5, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v5, p0, La/v/LCDView;->lastIsRemind:Z

    if-nez v5, :cond_7

    if-eqz v6, :cond_7

    iget-boolean v5, p0, La/v/LCDView;->isRemindVibrate:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, La/v/LCDView;->vibrator:Landroid/os/Vibrator;

    if-nez v5, :cond_3

    iget-object v5, p0, La/v/LCDView;->context:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, La/v/LCDView;->vibrator:Landroid/os/Vibrator;

    :cond_3
    iget-object v5, p0, La/v/LCDView;->context:Landroid/content/Context;

    iget-object v6, p0, La/v/LCDView;->vibrator:Landroid/os/Vibrator;

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_5

    const v6, 0x7f120372

    invoke-static {v5, v6}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_3

    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v5, v7, :cond_6

    invoke-static {}, Lg/cnh;->j()Landroid/os/VibrationEffect;

    move-result-object v5

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lg/cnh;->s(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_3

    :cond_6
    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_7
    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, La/v/LCDView;->getSingleTextWidth(C)F

    move-result v5

    iget v6, p0, La/v/LCDView;->xSpacing:F

    add-float/2addr v5, v6

    add-float/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_9

    const/4 v3, 0x1

    :cond_9
    iput-boolean v3, p0, La/v/LCDView;->lastIsRemind:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, La/v/LCDView;->getAllTextWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La/v/LCDView;->getAllTextWidth()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, La/v/LCDView;->gravity:I

    and-int/lit8 p1, p1, 0x1

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, La/v/LCDView;->getAllTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, p2

    add-float/2addr v1, p1

    iput v1, p0, La/v/LCDView;->xBegin:F

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, La/v/LCDView;->xBegin:F

    :goto_2
    iget p1, p0, La/v/LCDView;->gravity:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v4

    div-float/2addr v1, p2

    add-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, p1

    iput v1, p0, La/v/LCDView;->yBegin:F

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p1, p2

    iput p1, p0, La/v/LCDView;->yBegin:F

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v/LCDView;->isPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, La/v/LCDView;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v/LCDView;->isPaused:Z

    iget-object v0, p0, La/v/LCDView;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setCustomTimeText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/v/LCDView;->customTimeText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setParentBackgroundColor(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, La/v/LCDView;->context:Landroid/content/Context;

    const v2, 0x7f0700b3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setRemindColor(I)V
    .locals 1

    iput p1, p0, La/v/LCDView;->remindColor:I

    iget-object v0, p0, La/v/LCDView;->remindPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setRemindEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, La/v/LCDView;->isRemindEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRemindHour(I)V
    .locals 0

    iput p1, p0, La/v/LCDView;->remindHour:I

    return-void
.end method

.method public setRemindMillisecond(I)V
    .locals 0

    iput p1, p0, La/v/LCDView;->remindMillisecond:I

    return-void
.end method

.method public setRemindMinute(I)V
    .locals 0

    iput p1, p0, La/v/LCDView;->remindMinute:I

    return-void
.end method

.method public setRemindSecond(I)V
    .locals 0

    iput p1, p0, La/v/LCDView;->remindSecond:I

    return-void
.end method

.method public setRemindVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, La/v/LCDView;->isRemindVibrate:Z

    return-void
.end method

.method public setShowDisturbBg(Z)V
    .locals 0

    iput-boolean p1, p0, La/v/LCDView;->isShowDisturbBg:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iput p1, p0, La/v/LCDView;->textColor:I

    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, La/v/LCDView;->disturbBgPaint:Landroid/graphics/Paint;

    const v1, 0x1affffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextFontType(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, La/v/LCDView;->textFontType:Ljava/lang/String;

    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, La/v/LCDView;->setPaintFontType(Landroid/graphics/Paint;Ljava/lang/String;)V

    iget-object p1, p0, La/v/LCDView;->disturbBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, La/v/LCDView;->remindPaint:Landroid/graphics/Paint;

    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, La/v/LCDView;->getSingleNumberWidth(Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, La/v/LCDView;->singleNumberWidth:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iput p1, p0, La/v/LCDView;->textSize:F

    iget-object v0, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, La/v/LCDView;->disturbBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, La/v/LCDView;->remindPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, La/v/LCDView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, La/v/LCDView;->getSingleNumberWidth(Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, La/v/LCDView;->singleNumberWidth:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTextSizeSp(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, La/v/LCDView;->setTextSize(F)V

    return-void
.end method

.method public setTimeFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/v/LCDView;->timeFormat:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTimeOffsetInMs(J)V
    .locals 0

    iput-wide p1, p0, La/v/LCDView;->timeOffsetInMs:J

    return-void
.end method
