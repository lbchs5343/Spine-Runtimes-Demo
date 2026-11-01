.class public abstract Lg/ehv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gir$a;

.field public static final b:Lg/dfg$a;

.field public static final c:Z

.field public static final d:Lg/gep;

.field public static final e:Lg/fsx;

.field public static final f:Lg/fsx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lg/ehv;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lg/fsx;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1}, Lg/acp;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg/ehv;->e:Lg/fsx;

    new-instance v0, Lg/fsx;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1}, Lg/acp;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg/ehv;->f:Lg/fsx;

    sget-object v0, Lg/gir;->b:Lg/gir$a;

    sput-object v0, Lg/ehv;->a:Lg/gir$a;

    sget-object v0, Lg/dfg;->b:Lg/dfg$a;

    sput-object v0, Lg/ehv;->b:Lg/dfg$a;

    sget-object v0, Lg/fxq;->b:Lg/gep;

    sput-object v0, Lg/ehv;->d:Lg/gep;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lg/ehv;->e:Lg/fsx;

    sput-object v0, Lg/ehv;->f:Lg/fsx;

    sput-object v0, Lg/ehv;->a:Lg/gir$a;

    sput-object v0, Lg/ehv;->b:Lg/dfg$a;

    sput-object v0, Lg/ehv;->d:Lg/gep;

    :goto_1
    return-void
.end method
