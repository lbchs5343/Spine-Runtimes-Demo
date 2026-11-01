.class La/v/LCDView$FontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/v/LCDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/v/LCDView$FontInfo;->type:Ljava/lang/String;

    iput-object p2, p0, La/v/LCDView$FontInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(La/v/LCDView$FontInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La/v/LCDView$FontInfo;->path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/v/LCDView$FontInfo;->type:Ljava/lang/String;

    return-object v0
.end method
