.class public final Lg/st;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/st;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/st;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lg/st;-><init>(Ljava/util/List;)V

    sput-object v0, Lg/st;->a:Lg/st;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/st;->b:Ljava/util/List;

    return-void
.end method
