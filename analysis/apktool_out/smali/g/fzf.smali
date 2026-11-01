.class public final enum Lg/fzf;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BLACK:Lg/fzf;

.field public static final enum GRAY:Lg/fzf;

.field public static final enum WHITE:Lg/fzf;

.field public static final synthetic a:[Lg/fzf;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/fzf;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/fzf;->WHITE:Lg/fzf;

    new-instance v1, Lg/fzf;

    const-string v3, "GRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/fzf;->GRAY:Lg/fzf;

    new-instance v3, Lg/fzf;

    const-string v5, "BLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/fzf;->BLACK:Lg/fzf;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/fzf;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/fzf;->a:[Lg/fzf;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fzf;
    .locals 1

    const-class v0, Lg/fzf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fzf;

    return-object p0
.end method

.method public static values()[Lg/fzf;
    .locals 1

    sget-object v0, Lg/fzf;->a:[Lg/fzf;

    invoke-virtual {v0}, [Lg/fzf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fzf;

    return-object v0
.end method
