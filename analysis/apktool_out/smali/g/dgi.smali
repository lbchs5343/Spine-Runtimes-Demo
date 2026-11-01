.class public final Lg/dgi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dgi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/dgi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dgi;->a:Lg/dgi;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
