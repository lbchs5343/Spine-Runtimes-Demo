.class public final Lg/eau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/azo;


# static fields
.field public static final a:Lg/eau;


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/eau;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lg/eau;-><init>(Ljava/util/Map;)V

    sput-object v0, Lg/eau;->a:Lg/eau;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eau;->b:Ljava/util/Map;

    return-void
.end method
