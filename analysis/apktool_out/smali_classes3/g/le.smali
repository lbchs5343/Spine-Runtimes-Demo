.class public final Lg/le;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg/le;

.field public static final b:Lg/le;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/le;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sput-object v0, Lg/le;->b:Lg/le;

    return-void
.end method
