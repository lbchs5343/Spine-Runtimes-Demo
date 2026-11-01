.class public final enum Lg/be;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum EXTENDS:Lg/be;

.field public static final enum SUPER:Lg/be;

.field public static final enum UNBOUND:Lg/be;

.field public static final synthetic a:[Lg/be;


# instance fields
.field private final num:I

.field private final str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/be;

    const-string v1, "? extends "

    const-string v2, "EXTENDS"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lg/be;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lg/be;->EXTENDS:Lg/be;

    new-instance v1, Lg/be;

    const-string v2, "UNBOUND"

    const-string v5, "?"

    invoke-direct {v1, v2, v4, v3, v5}, Lg/be;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lg/be;->UNBOUND:Lg/be;

    new-instance v2, Lg/be;

    const/4 v5, -0x1

    const-string v6, "? super "

    const-string v7, "SUPER"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v6}, Lg/be;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lg/be;->SUPER:Lg/be;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/be;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v8

    sput-object v5, Lg/be;->a:[Lg/be;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/be;->num:I

    iput-object p4, p0, Lg/be;->str:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/be;
    .locals 1

    const-class v0, Lg/be;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/be;

    return-object p0
.end method

.method public static values()[Lg/be;
    .locals 1

    sget-object v0, Lg/be;->a:[Lg/be;

    invoke-virtual {v0}, [Lg/be;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/be;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/be;->str:Ljava/lang/String;

    return-object v0
.end method
