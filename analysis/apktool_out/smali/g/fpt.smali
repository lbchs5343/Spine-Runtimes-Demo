.class public interface abstract Lg/fpt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lg/ffr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/ffr;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {}, Lg/cch;->d()Ljava/util/NavigableMap;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sput-object v0, Lg/fpt;->b:Lg/ffr;

    return-void
.end method
