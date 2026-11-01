.class public final enum Lg/cvf;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/cvf;

.field public static final enum cd:Lg/cvf;

.field public static final enum d:Lg/cvf;

.field public static final enum dq:Lg/cvf;

.field public static final enum f:Lg/cvf;

.field public static final enum fw:Lg/cvf;

.field public static final enum gh:Lg/cvf;

.field public static final enum ia:Lg/cvf;

.field public static final enum ig:Lg/cvf;

.field public static final enum iw:Lg/cvf;

.field public static final enum jy:Lg/cvf;

.field public static final enum kk:Lg/cvf;

.field public static final enum mn:Lg/cvf;

.field public static final enum mp:Lg/cvf;

.field public static final enum no:Lg/cvf;

.field public static final enum o:Lg/cvf;

.field public static final enum ox:Lg/cvf;

.field public static final enum p:Lg/cvf;

.field public static final enum q:Lg/cvf;

.field public static final enum r:Lg/cvf;

.field public static final enum s:Lg/cvf;


# instance fields
.field private i:Ljava/lang/String;

.field private le:I


# direct methods
.method static constructor <clinit>()V
    .locals 43

    new-instance v0, Lg/cvf;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_EVENT"

    invoke-direct {v0, v1, v1, v2, v2}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/cvf;->dq:Lg/cvf;

    new-instance v2, Lg/cvf;

    const-string v3, "onTap"

    const/4 v4, 0x1

    const-string v5, "TAP_EVENT"

    invoke-direct {v2, v4, v4, v5, v3}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lg/cvf;->d:Lg/cvf;

    new-instance v3, Lg/cvf;

    const-string v5, "onLongTap"

    const/4 v6, 0x2

    const-string v7, "LONG_TAP_EVENT"

    invoke-direct {v3, v6, v6, v7, v5}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lg/cvf;->ox:Lg/cvf;

    new-instance v5, Lg/cvf;

    const-string v7, "onShake"

    const/4 v8, 0x3

    const-string v9, "SHAKE_EVENT"

    invoke-direct {v5, v8, v8, v9, v7}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lg/cvf;->p:Lg/cvf;

    new-instance v7, Lg/cvf;

    const/4 v9, 0x4

    const/16 v10, 0x12

    const-string v11, "TWIST_EVENT"

    const-string v12, "onTwist"

    invoke-direct {v7, v9, v10, v11, v12}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lg/cvf;->s:Lg/cvf;

    new-instance v11, Lg/cvf;

    const-string v12, "onSlide"

    const/4 v13, 0x5

    const-string v14, "SLIDE_EVENT"

    invoke-direct {v11, v13, v9, v14, v12}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lg/cvf;->iw:Lg/cvf;

    new-instance v12, Lg/cvf;

    const-string v14, "onExposure"

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v1, "EXPOSURE_EVENT"

    invoke-direct {v12, v15, v13, v1, v14}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lg/cvf;->mn:Lg/cvf;

    new-instance v1, Lg/cvf;

    const-string v14, "onScroll"

    const/16 v17, 0x1

    const/4 v4, 0x7

    const/16 v18, 0x2

    const-string v6, "SCROLL_EVENT"

    invoke-direct {v1, v4, v15, v6, v14}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/cvf;->ia:Lg/cvf;

    new-instance v6, Lg/cvf;

    const-string v14, "onPullToRefresh"

    const/16 v19, 0x3

    const/16 v8, 0x8

    const/16 v20, 0x4

    const-string v9, "PULL_TO_REFRESH_EVENT"

    invoke-direct {v6, v8, v4, v9, v14}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lg/cvf;->kk:Lg/cvf;

    new-instance v9, Lg/cvf;

    const-string v14, "onLoadMore"

    const/16 v21, 0x7

    const/16 v4, 0x9

    const/16 v22, 0x5

    const-string v13, "LOAD_MORE_EVENT"

    invoke-direct {v9, v4, v8, v13, v14}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lg/cvf;->o:Lg/cvf;

    new-instance v13, Lg/cvf;

    const-string v14, "onTimer"

    const/16 v23, 0x8

    const/16 v8, 0xa

    const/16 v24, 0x6

    const-string v15, "TIMER"

    invoke-direct {v13, v8, v4, v15, v14}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lg/cvf;->no:Lg/cvf;

    new-instance v14, Lg/cvf;

    const-string v15, "onDelay"

    const/16 v25, 0x9

    const/16 v4, 0xb

    const-string v10, "DELAY"

    invoke-direct {v14, v4, v8, v10, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lg/cvf;->ig:Lg/cvf;

    new-instance v10, Lg/cvf;

    const-string v15, "onAnimation"

    const/16 v27, 0xa

    const/16 v8, 0xc

    move-object/from16 v28, v0

    const-string v0, "ANIMATION"

    invoke-direct {v10, v8, v4, v0, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lg/cvf;->mp:Lg/cvf;

    new-instance v0, Lg/cvf;

    const-string v15, "onVideoProgress"

    const/16 v29, 0xb

    const/16 v4, 0xd

    move-object/from16 v30, v1

    const-string v1, "VIDEO_PROGRESS"

    invoke-direct {v0, v4, v8, v1, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/cvf;->q:Lg/cvf;

    new-instance v1, Lg/cvf;

    const-string v15, "onVideoPause"

    const/16 v31, 0xc

    const/16 v8, 0xe

    move-object/from16 v32, v0

    const-string v0, "VIDEO_PAUSE"

    invoke-direct {v1, v8, v4, v0, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/cvf;->jy:Lg/cvf;

    new-instance v0, Lg/cvf;

    const-string v15, "onVideoResume"

    const/16 v33, 0xd

    const/16 v4, 0xf

    move-object/from16 v34, v1

    const-string v1, "VIDEO_RESUME"

    invoke-direct {v0, v4, v8, v1, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/cvf;->f:Lg/cvf;

    new-instance v1, Lg/cvf;

    const-string v15, "onVideoFinish"

    const/16 v35, 0xe

    const/16 v8, 0x10

    move-object/from16 v36, v0

    const-string v0, "VIDEO_FINISH"

    invoke-direct {v1, v8, v4, v0, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/cvf;->fw:Lg/cvf;

    new-instance v0, Lg/cvf;

    const-string v15, "onVideoPlay"

    const/16 v37, 0xf

    const/16 v4, 0x11

    move-object/from16 v38, v1

    const-string v1, "VIDEO_PLAY"

    invoke-direct {v0, v4, v8, v1, v15}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/cvf;->cd:Lg/cvf;

    new-instance v1, Lg/cvf;

    const-string v15, "DOWN_EVENT"

    const/16 v39, 0x10

    const-string v8, "onDown"

    move-object/from16 v40, v0

    const/16 v0, 0x12

    invoke-direct {v1, v0, v4, v15, v8}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/cvf;->gh:Lg/cvf;

    new-instance v0, Lg/cvf;

    const-string v8, "onRenderSuccess"

    const/16 v15, 0x16

    const/16 v41, 0x11

    const/16 v4, 0x13

    move-object/from16 v42, v1

    const-string v1, "RENDER_SUCCESS"

    invoke-direct {v0, v4, v15, v1, v8}, Lg/cvf;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/cvf;->r:Lg/cvf;

    const/16 v1, 0x14

    new-array v1, v1, [Lg/cvf;

    aput-object v28, v1, v16

    aput-object v2, v1, v17

    aput-object v3, v1, v18

    aput-object v5, v1, v19

    aput-object v7, v1, v20

    aput-object v11, v1, v22

    aput-object v12, v1, v24

    aput-object v30, v1, v21

    aput-object v6, v1, v23

    aput-object v9, v1, v25

    aput-object v13, v1, v27

    aput-object v14, v1, v29

    aput-object v10, v1, v31

    aput-object v32, v1, v33

    aput-object v34, v1, v35

    aput-object v36, v1, v37

    aput-object v38, v1, v39

    aput-object v40, v1, v41

    const/16 v26, 0x12

    aput-object v42, v1, v26

    aput-object v0, v1, v4

    sput-object v1, Lg/cvf;->a:[Lg/cvf;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lg/cvf;->i:Ljava/lang/String;

    iput p2, p0, Lg/cvf;->le:I

    return-void
.end method

.method public static b(Ljava/lang/String;)Lg/cvf;
    .locals 5

    invoke-static {}, Lg/cvf;->values()[Lg/cvf;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lg/cvf;->i:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lg/cvf;->dq:Lg/cvf;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cvf;
    .locals 1

    const-class v0, Lg/cvf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cvf;

    return-object p0
.end method

.method public static values()[Lg/cvf;
    .locals 1

    sget-object v0, Lg/cvf;->a:[Lg/cvf;

    invoke-virtual {v0}, [Lg/cvf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cvf;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lg/cvf;->le:I

    return v0
.end method
