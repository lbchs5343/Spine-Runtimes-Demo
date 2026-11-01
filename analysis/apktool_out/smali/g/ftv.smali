.class public final enum Lg/ftv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALWAYS:Lg/ftv;

.field public static final enum IF_BETTER:Lg/ftv;

.field public static final enum NEVER:Lg/ftv;

.field public static final synthetic a:[Lg/ftv;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ftv;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ftv;->ALWAYS:Lg/ftv;

    new-instance v1, Lg/ftv;

    const-string v3, "IF_BETTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ftv;->IF_BETTER:Lg/ftv;

    new-instance v3, Lg/ftv;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ftv;->NEVER:Lg/ftv;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/ftv;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/ftv;->a:[Lg/ftv;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ftv;
    .locals 1

    const-class v0, Lg/ftv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ftv;

    return-object p0
.end method

.method public static values()[Lg/ftv;
    .locals 1

    sget-object v0, Lg/ftv;->a:[Lg/ftv;

    invoke-virtual {v0}, [Lg/ftv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ftv;

    return-object v0
.end method
