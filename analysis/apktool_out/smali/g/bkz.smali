.class public Lg/bkz;
.super Lg/aky;
.source "SourceFile"


# instance fields
.field public aq:Ljava/util/ArrayList;

.field public ar:Ljava/util/List;

.field public as:Ljava/util/ArrayList;

.field public at:Ljava/util/ArrayList;

.field private ax:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lg/dw;
        value = "implements"
    .end annotation
.end field

.field private ay:Ljava/lang/String;
    .annotation runtime Lg/dw;
        value = "package"
    .end annotation
.end field

.field private az:Ljava/lang/String;
    .annotation runtime Lg/dw;
        value = "extends"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final au(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lg/bkz;->ax:Ljava/util/List;

    return-void
.end method

.method public final av(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/bkz;->az:Ljava/lang/String;

    return-void
.end method

.method public final aw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/bkz;->ay:Ljava/lang/String;

    return-void
.end method
