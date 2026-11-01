.class public final Lg/ebt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:Landroid/util/SparseIntArray;

.field public static final c:Landroid/util/SparseIntArray;


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Z

.field public final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lg/ebt;->a:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lg/ebt;->b:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Lg/ebt;->c:Landroid/util/SparseIntArray;

    const/16 v4, 0x19

    const/16 v5, 0x52

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1a

    const/16 v6, 0x53

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1d

    const/16 v7, 0x55

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x56

    const/16 v8, 0x1e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5c

    const/16 v8, 0x24

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5b

    const/16 v8, 0x23

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3f

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3e

    const/4 v8, 0x3

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const/16 v8, 0x3a

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5b

    const/16 v9, 0x3c

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5c

    const/16 v10, 0x3b

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x65

    const/4 v11, 0x6

    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x66

    const/4 v12, 0x7

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x11

    const/16 v13, 0x46

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x12

    const/16 v14, 0x47

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x13

    const/16 v15, 0x48

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x63

    const/16 v7, 0x36

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x0

    const/16 v6, 0x1b

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x20

    const/16 v6, 0x57

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x58

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0xa

    const/16 v5, 0x45

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x9

    const/16 v15, 0x44

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6a

    const/16 v14, 0xd

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6d

    const/16 v13, 0x10

    invoke-virtual {v0, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6b

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x68

    const/16 v15, 0xb

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6c

    const/16 v15, 0xf

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x69

    const/16 v10, 0xc

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x28

    const/16 v10, 0x5f

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x50

    const/16 v8, 0x27

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4f

    const/16 v8, 0x29

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5e

    const/16 v8, 0x2a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4e

    const/16 v8, 0x14

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5d

    const/16 v8, 0x25

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x43

    const/4 v8, 0x5

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x51

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5a

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x54

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3d

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x39

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x5

    const/16 v8, 0x18

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1c

    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x17

    const/16 v8, 0x1f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x18

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x22

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x3

    const/16 v8, 0x17

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x15

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x60

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x49

    const/16 v8, 0x60

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x2

    const/16 v8, 0x16

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x2b

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1a

    const/16 v8, 0x2c

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x15

    const/16 v8, 0x2d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x16

    const/16 v8, 0x2e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x12

    const/16 v8, 0x2f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x13

    const/16 v8, 0x30

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x31

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x32

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x33

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x11

    const/16 v8, 0x34

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x19

    const/16 v8, 0x35

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x61

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4a

    const/16 v8, 0x37

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x62

    const/16 v8, 0x38

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4b

    const/16 v8, 0x39

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x63

    const/16 v8, 0x3a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4c

    const/16 v8, 0x3b

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x40

    const/16 v8, 0x3d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x42

    const/16 v8, 0x3e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x41

    const/16 v8, 0x3f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1c

    const/16 v8, 0x40

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x79

    const/16 v8, 0x41

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x23

    const/16 v8, 0x42

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x7a

    const/16 v8, 0x43

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x71

    const/16 v8, 0x4f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const/16 v8, 0x26

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x70

    const/16 v8, 0x44

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x64

    const/16 v8, 0x45

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4d

    const/16 v8, 0x46

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6f

    const/16 v8, 0x61

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x20

    const/16 v8, 0x47

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1e

    const/16 v8, 0x48

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1f

    const/16 v8, 0x49

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x21

    const/16 v8, 0x4a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1d

    const/16 v8, 0x4b

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x72

    const/16 v8, 0x4c

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x59

    const/16 v8, 0x4d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x7b

    const/16 v8, 0x4e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x38

    const/16 v8, 0x50

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x37

    const/16 v8, 0x51

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x74

    const/16 v8, 0x52

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x78

    const/16 v8, 0x53

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x77

    const/16 v8, 0x54

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x76

    const/16 v8, 0x55

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x75

    const/16 v7, 0x56

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v8, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x0

    const/16 v4, 0x1b

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x59

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5c

    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5a

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0xb

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5b

    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x58

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4e

    const/16 v4, 0x28

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x27

    const/16 v8, 0x47

    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x29

    const/16 v8, 0x46

    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4d

    const/16 v4, 0x2a

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    const/16 v8, 0x45

    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4c

    const/16 v4, 0x25

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x5

    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v8, 0x48

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4b

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x49

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x39

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x38

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x5

    const/16 v4, 0x18

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    invoke-virtual {v3, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x17

    const/16 v4, 0x1f

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x3

    const/16 v2, 0x17

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4f

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x40

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x2b

    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1a

    const/16 v1, 0x2c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x16

    const/16 v1, 0x2e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x12

    const/16 v1, 0x2f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x13

    const/16 v1, 0x30

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x31

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x32

    invoke-virtual {v3, v15, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x33

    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x11

    const/16 v1, 0x34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x19

    const/16 v1, 0x35

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x50

    const/16 v1, 0x36

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x41

    const/16 v1, 0x37

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x51

    const/16 v1, 0x38

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x42

    const/16 v1, 0x39

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3a

    const/16 v8, 0x52

    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x43

    const/16 v8, 0x3b

    invoke-virtual {v3, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x3e

    invoke-virtual {v3, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x3f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x69

    const/16 v1, 0x41

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    const/16 v1, 0x42

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6a

    const/16 v1, 0x43

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x60

    const/16 v1, 0x4f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x1

    const/16 v1, 0x26

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x61

    const/16 v1, 0x62

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v8, 0x44

    invoke-virtual {v3, v10, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x53

    const/16 v1, 0x45

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x46

    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x20

    const/16 v8, 0x47

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1e

    const/16 v8, 0x48

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1f

    const/16 v1, 0x49

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x21

    const/16 v1, 0x4a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1d

    const/16 v1, 0x4b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x62

    const/16 v1, 0x4c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4a

    const/16 v1, 0x4d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6b

    const/16 v1, 0x4e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x37

    const/16 v1, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x51

    const/16 v1, 0x36

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x64

    const/16 v8, 0x52

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x68

    const/16 v8, 0x53

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x67

    const/16 v1, 0x54

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x66

    const/16 v8, 0x55

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x65

    const/16 v1, 0x56

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5e

    const/16 v1, 0x61

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ebt;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ebt;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ebt;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static g(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static h(Lg/fqo;Ljava/lang/String;)[I
    .locals 10

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Lg/ewf;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_4
    array-length p0, p1

    if-eq v4, p0, :cond_5

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static i(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lg/djm;
    .locals 18

    new-instance v0, Lg/djm;

    invoke-direct {v0}, Lg/djm;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lg/bfv;->i:[I

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_1

    :cond_0
    sget-object v1, Lg/bfv;->d:[I

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v2, Lg/buj;->j:[Ljava/lang/String;

    iget-object v3, v0, Lg/djm;->e:Lg/dqy;

    iget-object v4, v0, Lg/djm;->b:Lg/edp;

    iget-object v5, v0, Lg/djm;->f:Lg/ggo;

    iget-object v6, v0, Lg/djm;->a:Lg/crp;

    sget-object v7, Lg/ebt;->a:[I

    const-string v10, "CURRENTLY UNSUPPORTED"

    const-string v11, "ConstraintSet"

    const-string v12, "/"

    sget-object v13, Lg/ebt;->b:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    new-instance v15, Lg/dyw;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    const/16 v14, 0xa

    new-array v8, v14, [I

    iput-object v8, v15, Lg/dyw;->f:[I

    new-array v8, v14, [I

    iput-object v8, v15, Lg/dyw;->i:[I

    const/4 v8, 0x0

    iput v8, v15, Lg/dyw;->k:I

    new-array v8, v14, [I

    iput-object v8, v15, Lg/dyw;->c:[I

    new-array v8, v14, [F

    iput-object v8, v15, Lg/dyw;->e:[F

    const/4 v8, 0x0

    iput v8, v15, Lg/dyw;->g:I

    const/4 v14, 0x5

    new-array v8, v14, [I

    iput-object v8, v15, Lg/dyw;->l:[I

    new-array v8, v14, [Ljava/lang/String;

    iput-object v8, v15, Lg/dyw;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    iput v8, v15, Lg/dyw;->h:I

    const/4 v14, 0x4

    new-array v8, v14, [I

    iput-object v8, v15, Lg/dyw;->j:[I

    new-array v8, v14, [Z

    iput-object v8, v15, Lg/dyw;->b:[Z

    const/4 v8, 0x0

    iput v8, v15, Lg/dyw;->d:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_f

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    move-object/from16 v16, v2

    sget-object v2, Lg/ebt;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    :goto_3
    move-object/from16 v17, v7

    :cond_1
    :goto_4
    const/4 v7, 0x5

    goto/16 :goto_5

    :pswitch_1
    iget-boolean v2, v6, Lg/crp;->bn:Z

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v14, 0x63

    invoke-virtual {v15, v14, v2}, Lg/dyw;->m(IZ)V

    goto :goto_3

    :pswitch_2
    sget v2, Lg/ffd;->w:I

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    move-object/from16 v17, v7

    const/4 v7, 0x3

    if-ne v2, v7, :cond_2

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_4

    :cond_2
    iget v2, v0, Lg/djm;->c:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lg/djm;->c:I

    goto :goto_4

    :pswitch_3
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->o:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x61

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v17, v7

    const/4 v2, 0x1

    invoke-static {v15, v1, v14, v2}, Lg/ebt;->j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_4

    :pswitch_5
    move-object/from16 v17, v7

    const/4 v2, 0x0

    invoke-static {v15, v1, v14, v2}, Lg/ebt;->j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_4

    :pswitch_6
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->be:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x5e

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto :goto_4

    :pswitch_7
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->h:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x5d

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto :goto_4

    :pswitch_8
    move-object/from16 v17, v7

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    goto :goto_4

    :pswitch_9
    move-object/from16 v17, v7

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    const/4 v7, -0x1

    invoke-virtual {v1, v14, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v5, Lg/ggo;->g:I

    const/16 v14, 0x59

    invoke-virtual {v15, v14, v2}, Lg/dyw;->o(II)V

    iget v2, v5, Lg/ggo;->g:I

    if-eq v2, v7, :cond_1

    const/4 v2, -0x2

    const/16 v7, 0x58

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :cond_3
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lg/ggo;->b:Ljava/lang/String;

    const/16 v7, 0x5a

    invoke-virtual {v15, v7, v2}, Lg/dyw;->p(ILjava/lang/String;)V

    iget-object v2, v5, Lg/ggo;->b:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v7, -0x1

    invoke-virtual {v1, v14, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v5, Lg/ggo;->g:I

    const/16 v14, 0x59

    invoke-virtual {v15, v14, v2}, Lg/dyw;->o(II)V

    const/4 v2, -0x2

    const/16 v14, 0x58

    invoke-virtual {v15, v14, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :cond_4
    const/4 v7, -0x1

    const/16 v14, 0x58

    invoke-virtual {v15, v14, v7}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :cond_5
    const/16 v7, 0x58

    iget v2, v5, Lg/ggo;->g:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_a
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->f:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x55

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->j:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/16 v7, 0x54

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->b:I

    invoke-static {v1, v14, v2}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v2

    const/16 v7, 0x53

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->h:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/16 v7, 0x52

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v17, v7

    iget-boolean v2, v6, Lg/crp;->i:Z

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v7, 0x51

    invoke-virtual {v15, v7, v2}, Lg/dyw;->m(IZ)V

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v17, v7

    iget-boolean v2, v6, Lg/crp;->bi:Z

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v7, 0x50

    invoke-virtual {v15, v7, v2}, Lg/dyw;->m(IZ)V

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->c:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x4f

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v17, v7

    iget v2, v3, Lg/dqy;->c:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x4e

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v17, v7

    const/16 v2, 0x4d

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Lg/dyw;->p(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->i:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x4c

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v17, v7

    iget-boolean v2, v6, Lg/crp;->au:Z

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v7, 0x4b

    invoke-virtual {v15, v7, v2}, Lg/dyw;->m(IZ)V

    goto/16 :goto_4

    :pswitch_15
    move-object/from16 v17, v7

    const/16 v2, 0x4a

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Lg/dyw;->p(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_16
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->w:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x49

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bh:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x48

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v17, v7

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v17, v7

    const/16 v2, 0x46

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v14, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    invoke-virtual {v15, v2, v14}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_1a
    move-object/from16 v17, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v2, 0x45

    invoke-virtual {v1, v14, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    invoke-virtual {v15, v2, v14}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_1b
    move-object/from16 v17, v7

    iget v2, v3, Lg/dqy;->a:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x44

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_1c
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->d:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x43

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_1d
    move-object/from16 v17, v7

    const/16 v2, 0x42

    const/4 v7, 0x0

    invoke-virtual {v1, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v15, v2, v14}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_1e
    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_6

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x41

    invoke-virtual {v15, v7, v2}, Lg/dyw;->p(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x0

    const/16 v7, 0x41

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    aget-object v2, v16, v14

    invoke-virtual {v15, v7, v2}, Lg/dyw;->p(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1f
    move-object/from16 v17, v7

    iget v2, v5, Lg/ggo;->e:I

    invoke-static {v1, v14, v2}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v2

    const/16 v7, 0x40

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_20
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->u:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x3f

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_21
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->az:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x3e

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_22
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->g:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x3c

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_23
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->q:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x3b

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_24
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ac:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x3a

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_25
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->aq:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x39

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_26
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bj:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x38

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_27
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bp:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x37

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_28
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->af:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x36

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_29
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->c:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v7, 0x35

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_2a
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->l:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v7, 0x34

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_2b
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->j:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v7, 0x33

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_2c
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->n:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v7, 0x32

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_2d
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->h:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v7, 0x31

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_2e
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->f:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x30

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_2f
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->d:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x2f

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_30
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->m:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x2e

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_31
    move-object/from16 v17, v7

    iget v2, v4, Lg/edp;->k:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x2d

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_32
    move-object/from16 v17, v7

    const/16 v2, 0x2c

    const/4 v7, 0x1

    invoke-virtual {v15, v2, v7}, Lg/dyw;->m(IZ)V

    iget v7, v4, Lg/edp;->i:F

    invoke-virtual {v1, v14, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v15, v2, v7}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_33
    move-object/from16 v17, v7

    iget v2, v3, Lg/dqy;->d:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x2b

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_34
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ai:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x2a

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_35
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->r:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x29

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->aw:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x28

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_37
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->y:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x27

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_38
    move-object/from16 v17, v7

    iget v2, v0, Lg/djm;->c:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lg/djm;->c:I

    const/16 v7, 0x26

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_39
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bm:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x25

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_3a
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->g:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x22

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_3b
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ag:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x1f

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_3c
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->p:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x1c

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_3d
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bl:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v7, 0x1b

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_3e
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bb:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x18

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_3f
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->av:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    const/16 v7, 0x17

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_40
    move-object/from16 v17, v7

    iget v2, v3, Lg/dqy;->b:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v2, v17, v2

    const/16 v7, 0x16

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_41
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bf:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    const/16 v7, 0x15

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_42
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->aj:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x14

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_43
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ak:F

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v7, 0x13

    invoke-virtual {v15, v7, v2}, Lg/dyw;->n(IF)V

    goto/16 :goto_4

    :pswitch_44
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->x:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v7, 0x12

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_45
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->t:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v7, 0x11

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_46
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->n:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x10

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_47
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ar:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0xf

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_48
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->bc:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0xe

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_49
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ae:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0xd

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_4a
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->m:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0xc

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_4b
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->as:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0xb

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_4c
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->am:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v7, 0x8

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_4d
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ab:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v7, 0x7

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_4e
    move-object/from16 v17, v7

    iget v2, v6, Lg/crp;->ad:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v7, 0x6

    invoke-virtual {v15, v7, v2}, Lg/dyw;->o(II)V

    goto/16 :goto_4

    :pswitch_4f
    move-object/from16 v17, v7

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x5

    invoke-virtual {v15, v7, v2}, Lg/dyw;->p(ILjava/lang/String;)V

    goto :goto_5

    :pswitch_50
    move-object/from16 v17, v7

    const/4 v7, 0x5

    iget v2, v6, Lg/crp;->bk:I

    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v14, 0x2

    invoke-virtual {v15, v14, v2}, Lg/dyw;->o(II)V

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    move-object/from16 v7, v17

    goto/16 :goto_2

    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v2, :cond_e

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_8

    const/16 v9, 0x17

    const/16 v14, 0x18

    if-eq v9, v7, :cond_9

    if-eq v14, v7, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_8
    const/16 v9, 0x17

    const/16 v14, 0x18

    :cond_9
    :goto_7
    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    packed-switch v15, :pswitch_data_1

    :pswitch_51
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->get(I)I

    :cond_a
    :goto_8
    const/4 v14, 0x3

    const/4 v15, 0x0

    goto/16 :goto_a

    :pswitch_52
    iget v15, v6, Lg/crp;->o:I

    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->o:I

    goto :goto_8

    :pswitch_53
    const/4 v15, 0x1

    invoke-static {v6, v1, v7, v15}, Lg/ebt;->j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_8

    :pswitch_54
    const/4 v15, 0x0

    invoke-static {v6, v1, v7, v15}, Lg/ebt;->j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    :goto_9
    const/4 v14, 0x3

    goto/16 :goto_a

    :pswitch_55
    iget v15, v6, Lg/crp;->be:I

    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->be:I

    goto :goto_8

    :pswitch_56
    iget v15, v6, Lg/crp;->h:I

    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->h:I

    goto :goto_8

    :pswitch_57
    iget v15, v6, Lg/crp;->bo:I

    invoke-static {v1, v7, v15}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->bo:I

    goto :goto_8

    :pswitch_58
    iget v15, v6, Lg/crp;->ay:I

    invoke-static {v1, v7, v15}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->ay:I

    goto :goto_8

    :pswitch_59
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->get(I)I

    goto :goto_8

    :pswitch_5a
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    iget v15, v15, Landroid/util/TypedValue;->type:I

    const/4 v9, 0x1

    if-ne v15, v9, :cond_b

    const/4 v9, -0x1

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lg/ggo;->g:I

    goto :goto_8

    :cond_b
    const/4 v9, -0x1

    const/4 v14, 0x3

    if-ne v15, v14, :cond_c

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lg/ggo;->b:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_a

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lg/ggo;->g:I

    goto :goto_8

    :cond_c
    iget v14, v5, Lg/ggo;->g:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    goto :goto_8

    :pswitch_5b
    const/4 v9, -0x1

    iget v14, v5, Lg/ggo;->f:F

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v5, Lg/ggo;->f:F

    goto :goto_8

    :pswitch_5c
    const/4 v9, -0x1

    iget v14, v5, Lg/ggo;->j:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v5, Lg/ggo;->j:I

    goto/16 :goto_8

    :pswitch_5d
    const/4 v9, -0x1

    iget v14, v4, Lg/edp;->b:I

    invoke-static {v1, v7, v14}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v4, Lg/edp;->b:I

    goto/16 :goto_8

    :pswitch_5e
    const/4 v9, -0x1

    iget v14, v5, Lg/ggo;->h:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v5, Lg/ggo;->h:I

    goto/16 :goto_8

    :pswitch_5f
    const/4 v9, -0x1

    iget-boolean v14, v6, Lg/crp;->i:Z

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Lg/crp;->i:Z

    goto/16 :goto_8

    :pswitch_60
    const/4 v9, -0x1

    iget-boolean v14, v6, Lg/crp;->bi:Z

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Lg/crp;->bi:Z

    goto/16 :goto_8

    :pswitch_61
    const/4 v9, -0x1

    iget v14, v5, Lg/ggo;->c:F

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v5, Lg/ggo;->c:F

    goto/16 :goto_8

    :pswitch_62
    const/4 v9, -0x1

    iget v14, v3, Lg/dqy;->c:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v3, Lg/dqy;->c:I

    goto/16 :goto_8

    :pswitch_63
    const/4 v9, -0x1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lg/crp;->al:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_64
    const/4 v9, -0x1

    iget v14, v5, Lg/ggo;->i:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v5, Lg/ggo;->i:I

    goto/16 :goto_8

    :pswitch_65
    const/4 v9, -0x1

    iget-boolean v14, v6, Lg/crp;->au:Z

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Lg/crp;->au:Z

    goto/16 :goto_8

    :pswitch_66
    const/4 v9, -0x1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lg/crp;->bg:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_67
    const/4 v9, -0x1

    iget v14, v6, Lg/crp;->w:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->w:I

    goto/16 :goto_8

    :pswitch_68
    const/4 v9, -0x1

    iget v14, v6, Lg/crp;->bh:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bh:I

    goto/16 :goto_8

    :pswitch_69
    const/4 v9, -0x1

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_6a
    const/4 v9, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->bd:F

    goto/16 :goto_8

    :pswitch_6b
    const/4 v9, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->j:F

    goto/16 :goto_8

    :pswitch_6c
    const/4 v9, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    iget v15, v3, Lg/dqy;->a:F

    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v3, Lg/dqy;->a:F

    goto/16 :goto_8

    :pswitch_6d
    const/4 v9, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    iget v15, v5, Lg/ggo;->d:F

    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v5, Lg/ggo;->d:F

    goto/16 :goto_8

    :pswitch_6e
    const/4 v9, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_9

    :pswitch_6f
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v9, v14, :cond_d

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_a

    :cond_d
    invoke-virtual {v1, v7, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    aget-object v7, v16, v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_a

    :pswitch_70
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v5, Lg/ggo;->e:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v5, Lg/ggo;->e:I

    goto/16 :goto_a

    :pswitch_71
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->u:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->u:F

    goto/16 :goto_a

    :pswitch_72
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->az:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->az:I

    goto/16 :goto_a

    :pswitch_73
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->b:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->b:I

    goto/16 :goto_a

    :pswitch_74
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->g:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->g:F

    goto/16 :goto_a

    :pswitch_75
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->q:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->q:I

    goto/16 :goto_a

    :pswitch_76
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ac:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ac:I

    goto/16 :goto_a

    :pswitch_77
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->aq:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->aq:I

    goto/16 :goto_a

    :pswitch_78
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bj:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bj:I

    goto/16 :goto_a

    :pswitch_79
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bp:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bp:I

    goto/16 :goto_a

    :pswitch_7a
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->af:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->af:I

    goto/16 :goto_a

    :pswitch_7b
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->c:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->c:F

    goto/16 :goto_a

    :pswitch_7c
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->l:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->l:F

    goto/16 :goto_a

    :pswitch_7d
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->j:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->j:F

    goto/16 :goto_a

    :pswitch_7e
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->n:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->n:F

    goto/16 :goto_a

    :pswitch_7f
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->h:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->h:F

    goto/16 :goto_a

    :pswitch_80
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->f:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->f:F

    goto/16 :goto_a

    :pswitch_81
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->d:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->d:F

    goto/16 :goto_a

    :pswitch_82
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->m:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->m:F

    goto/16 :goto_a

    :pswitch_83
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v4, Lg/edp;->k:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->k:F

    goto/16 :goto_a

    :pswitch_84
    const/4 v9, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    iput-boolean v9, v4, Lg/edp;->e:Z

    iget v9, v4, Lg/edp;->i:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v4, Lg/edp;->i:F

    goto/16 :goto_a

    :pswitch_85
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v3, Lg/dqy;->d:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v3, Lg/dqy;->d:F

    goto/16 :goto_a

    :pswitch_86
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ai:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ai:I

    goto/16 :goto_a

    :pswitch_87
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->r:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->r:I

    goto/16 :goto_a

    :pswitch_88
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->aw:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->aw:F

    goto/16 :goto_a

    :pswitch_89
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->y:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->y:F

    goto/16 :goto_a

    :pswitch_8a
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v0, Lg/djm;->c:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lg/djm;->c:I

    goto/16 :goto_a

    :pswitch_8b
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bm:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->bm:F

    goto/16 :goto_a

    :pswitch_8c
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->v:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->v:I

    goto/16 :goto_a

    :pswitch_8d
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ap:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->ap:I

    goto/16 :goto_a

    :pswitch_8e
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->g:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->g:I

    goto/16 :goto_a

    :pswitch_8f
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ba:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->ba:I

    goto/16 :goto_a

    :pswitch_90
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->an:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->an:I

    goto/16 :goto_a

    :pswitch_91
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ag:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ag:I

    goto/16 :goto_a

    :pswitch_92
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->e:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->e:I

    goto/16 :goto_a

    :pswitch_93
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ax:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->ax:I

    goto/16 :goto_a

    :pswitch_94
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->p:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->p:I

    goto/16 :goto_a

    :pswitch_95
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bl:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bl:I

    goto/16 :goto_a

    :pswitch_96
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->at:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->at:I

    goto/16 :goto_a

    :pswitch_97
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->d:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->d:I

    goto/16 :goto_a

    :pswitch_98
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bb:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bb:I

    goto/16 :goto_a

    :pswitch_99
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->av:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Lg/crp;->av:I

    goto/16 :goto_a

    :pswitch_9a
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v3, Lg/dqy;->b:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v3, Lg/dqy;->b:I

    aget v7, v17, v7

    iput v7, v3, Lg/dqy;->b:I

    goto/16 :goto_a

    :pswitch_9b
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bf:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bf:I

    goto/16 :goto_a

    :pswitch_9c
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->aj:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->aj:F

    goto/16 :goto_a

    :pswitch_9d
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ak:F

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Lg/crp;->ak:F

    goto/16 :goto_a

    :pswitch_9e
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->x:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lg/crp;->x:I

    goto/16 :goto_a

    :pswitch_9f
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->t:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lg/crp;->t:I

    goto/16 :goto_a

    :pswitch_a0
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->n:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->n:I

    goto/16 :goto_a

    :pswitch_a1
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ar:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ar:I

    goto/16 :goto_a

    :pswitch_a2
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bc:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bc:I

    goto/16 :goto_a

    :pswitch_a3
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ae:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ae:I

    goto/16 :goto_a

    :pswitch_a4
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->m:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->m:I

    goto/16 :goto_a

    :pswitch_a5
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->as:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->as:I

    goto/16 :goto_a

    :pswitch_a6
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->aa:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->aa:I

    goto :goto_a

    :pswitch_a7
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ah:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->ah:I

    goto :goto_a

    :pswitch_a8
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->am:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->am:I

    goto :goto_a

    :pswitch_a9
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ab:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ab:I

    goto :goto_a

    :pswitch_aa
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ad:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Lg/crp;->ad:I

    goto :goto_a

    :pswitch_ab
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lg/crp;->l:Ljava/lang/String;

    goto :goto_a

    :pswitch_ac
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->s:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->s:I

    goto :goto_a

    :pswitch_ad
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->k:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->k:I

    goto :goto_a

    :pswitch_ae
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->bk:I

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Lg/crp;->bk:I

    goto :goto_a

    :pswitch_af
    const/4 v14, 0x3

    const/4 v15, 0x0

    iget v9, v6, Lg/crp;->ao:I

    invoke-static {v1, v7, v9}, Lg/ebt;->g(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Lg/crp;->ao:I

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :cond_e
    iget-object v2, v6, Lg/crp;->bg:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    iput-object v2, v6, Lg/crp;->c:[I

    :cond_f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public static j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 7

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x17

    const/16 v4, 0x15

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v0, v1, :cond_a

    if-eq v0, v5, :cond_4

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    const/4 v0, -0x2

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v6, p1

    goto :goto_0

    :cond_3
    const/4 v6, -0x2

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_1

    :goto_2
    instance-of p1, p0, Lg/dnk;

    if-eqz p1, :cond_6

    check-cast p0, Lg/dnk;

    if-nez p3, :cond_5

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v2, p0, Lg/dnk;->ah:Z

    return-void

    :cond_5
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v2, p0, Lg/dnk;->ae:Z

    return-void

    :cond_6
    instance-of p1, p0, Lg/crp;

    if-eqz p1, :cond_8

    check-cast p0, Lg/crp;

    if-nez p3, :cond_7

    iput v6, p0, Lg/crp;->av:I

    iput-boolean v2, p0, Lg/crp;->bi:Z

    return-void

    :cond_7
    iput v6, p0, Lg/crp;->bf:I

    iput-boolean v2, p0, Lg/crp;->i:Z

    return-void

    :cond_8
    instance-of p1, p0, Lg/dyw;

    if-eqz p1, :cond_1b

    check-cast p0, Lg/dyw;

    if-nez p3, :cond_9

    invoke-virtual {p0, v3, v6}, Lg/dyw;->o(II)V

    const/16 p1, 0x50

    invoke-virtual {p0, p1, v2}, Lg/dyw;->m(IZ)V

    return-void

    :cond_9
    invoke-virtual {p0, v4, v6}, Lg/dyw;->o(II)V

    const/16 p1, 0x51

    invoke-virtual {p0, p1, v2}, Lg/dyw;->m(IZ)V

    return-void

    :cond_a
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    goto/16 :goto_4

    :cond_b
    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_1b

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_1b

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of p2, p0, Lg/dnk;

    if-eqz p2, :cond_d

    check-cast p0, Lg/dnk;

    if-nez p3, :cond_c

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    :cond_c
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_3
    invoke-static {p0, p1}, Lg/ebt;->k(Lg/dnk;Ljava/lang/String;)V

    return-void

    :cond_d
    instance-of p2, p0, Lg/crp;

    if-eqz p2, :cond_e

    check-cast p0, Lg/crp;

    iput-object p1, p0, Lg/crp;->l:Ljava/lang/String;

    return-void

    :cond_e
    instance-of p2, p0, Lg/dyw;

    if-eqz p2, :cond_1b

    check-cast p0, Lg/dyw;

    invoke-virtual {p0, v5, p1}, Lg/dyw;->p(ILjava/lang/String;)V

    return-void

    :cond_f
    const-string v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    instance-of p2, p0, Lg/dnk;

    if-eqz p2, :cond_11

    check-cast p0, Lg/dnk;

    if-nez p3, :cond_10

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Lg/dnk;->f:F

    return-void

    :cond_10
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Lg/dnk;->bk:F

    return-void

    :cond_11
    instance-of p2, p0, Lg/crp;

    if-eqz p2, :cond_13

    check-cast p0, Lg/crp;

    if-nez p3, :cond_12

    iput v6, p0, Lg/crp;->av:I

    iput p1, p0, Lg/crp;->y:F

    return-void

    :cond_12
    iput v6, p0, Lg/crp;->bf:I

    iput p1, p0, Lg/crp;->aw:F

    return-void

    :cond_13
    instance-of p2, p0, Lg/dyw;

    if-eqz p2, :cond_1b

    check-cast p0, Lg/dyw;

    if-nez p3, :cond_14

    invoke-virtual {p0, v3, v6}, Lg/dyw;->o(II)V

    const/16 p2, 0x27

    invoke-virtual {p0, p2, p1}, Lg/dyw;->n(IF)V

    return-void

    :cond_14
    invoke-virtual {p0, v4, v6}, Lg/dyw;->o(II)V

    const/16 p2, 0x28

    invoke-virtual {p0, p2, p1}, Lg/dyw;->n(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_15
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of p2, p0, Lg/dnk;

    const/4 v0, 0x2

    if-eqz p2, :cond_17

    check-cast p0, Lg/dnk;

    if-nez p3, :cond_16

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Lg/dnk;->aq:F

    iput v0, p0, Lg/dnk;->g:I

    return-void

    :cond_16
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Lg/dnk;->be:F

    iput v0, p0, Lg/dnk;->ad:I

    return-void

    :cond_17
    instance-of p2, p0, Lg/crp;

    if-eqz p2, :cond_19

    check-cast p0, Lg/crp;

    if-nez p3, :cond_18

    iput v6, p0, Lg/crp;->av:I

    iput p1, p0, Lg/crp;->j:F

    iput v0, p0, Lg/crp;->af:I

    return-void

    :cond_18
    iput v6, p0, Lg/crp;->bf:I

    iput p1, p0, Lg/crp;->bd:F

    iput v0, p0, Lg/crp;->bp:I

    return-void

    :cond_19
    instance-of p1, p0, Lg/dyw;

    if-eqz p1, :cond_1b

    check-cast p0, Lg/dyw;

    if-nez p3, :cond_1a

    invoke-virtual {p0, v3, v6}, Lg/dyw;->o(II)V

    const/16 p1, 0x36

    invoke-virtual {p0, p1, v0}, Lg/dyw;->o(II)V

    return-void

    :cond_1a
    invoke-virtual {p0, v4, v6}, Lg/dyw;->o(II)V

    const/16 p1, 0x37

    invoke-virtual {p0, p1, v0}, Lg/dyw;->o(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1b
    :goto_4
    return-void
.end method

.method public static k(Lg/dnk;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "H"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v3

    move v4, v2

    move v2, v1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Lg/dnk;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lg/djm;

    invoke-direct {v2}, Lg/djm;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/djm;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lg/djm;->a:Lg/crp;

    const/4 v0, 0x0

    iput v0, p1, Lg/crp;->ah:I

    const/4 v0, -0x1

    iput v0, p1, Lg/crp;->aa:I

    return-void
.end method

.method public final m(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v3, :cond_f

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :goto_1
    move-object/from16 v19, v4

    move/from16 v20, v7

    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_1
    iget-boolean v10, v1, Lg/ebt;->e:Z

    const/4 v11, -0x1

    if-eqz v10, :cond_3

    if-eq v0, v11, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    if-ne v0, v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/djm;

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    iget-object v12, v10, Lg/djm;->e:Lg/dqy;

    iget-object v13, v10, Lg/djm;->a:Lg/crp;

    iget-object v14, v10, Lg/djm;->b:Lg/edp;

    instance-of v15, v9, Lg/fqo;

    if-eqz v15, :cond_7

    iput v8, v13, Lg/crp;->f:I

    move-object v15, v9

    check-cast v15, Lg/fqo;

    invoke-virtual {v15, v0}, Landroid/view/View;->setId(I)V

    iget v0, v13, Lg/crp;->bh:I

    invoke-virtual {v15, v0}, Lg/fqo;->setType(I)V

    iget v0, v13, Lg/crp;->w:I

    invoke-virtual {v15, v0}, Lg/fqo;->setMargin(I)V

    iget-boolean v0, v13, Lg/crp;->au:Z

    invoke-virtual {v15, v0}, Lg/fqo;->setAllowsGoneWidget(Z)V

    iget-object v0, v13, Lg/crp;->c:[I

    if-eqz v0, :cond_6

    invoke-virtual {v15, v0}, Lg/atw;->setReferencedIds([I)V

    goto :goto_3

    :cond_6
    iget-object v0, v13, Lg/crp;->bg:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v15, v0}, Lg/ebt;->h(Lg/fqo;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v13, Lg/crp;->c:[I

    invoke-virtual {v15, v0}, Lg/atw;->setReferencedIds([I)V

    :cond_7
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lg/dnk;

    invoke-virtual {v13}, Lg/dnk;->bq()V

    invoke-virtual {v10, v13}, Lg/djm;->g(Lg/dnk;)V

    iget-object v10, v10, Lg/djm;->d:Ljava/util/HashMap;

    const-string v15, "\" not found on "

    const/16 v16, 0x0

    const-string v6, " Custom Attribute \""

    const-string v11, "TransitionLayout"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/frn;

    move-object/from16 v19, v4

    iget-boolean v4, v0, Lg/frn;->c:Z

    if-nez v4, :cond_8

    const-string v4, "set"

    invoke-static {v4, v1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    move/from16 v20, v7

    goto :goto_6

    :cond_8
    move-object v4, v1

    goto :goto_5

    :goto_6
    :try_start_1
    iget-object v7, v0, Lg/frn;->e:Lg/dwj;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    packed-switch v7, :pswitch_data_0

    move-object/from16 v23, v10

    goto/16 :goto_a

    :pswitch_0
    move-object/from16 v23, v10

    const/4 v7, 0x1

    :try_start_2
    new-array v10, v7, [Ljava/lang/Class;

    aput-object v22, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget v0, v0, Lg/frn;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v21, v0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :pswitch_1
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    aput-object v21, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget v0, v0, Lg/frn;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object/from16 v21, v0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_2
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iget-boolean v0, v0, Lg/frn;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v21, v0

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v7, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_3
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const-class v17, Ljava/lang/CharSequence;

    aput-object v17, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget-object v0, v0, Lg/frn;->b:Ljava/lang/String;

    move-object/from16 v21, v0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_4
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Lg/frn;->g:I

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    move-object/from16 v21, v10

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v7, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    aput-object v22, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget v0, v0, Lg/frn;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v21, v0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    aput-object v21, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget v0, v0, Lg/frn;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object/from16 v21, v0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :pswitch_7
    move-object/from16 v23, v10

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    aput-object v22, v10, v16

    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget v0, v0, Lg/frn;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v21, v0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v23, v10

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v23, v10

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v23, v10

    goto :goto_9

    :goto_7
    invoke-static {v6, v1, v15}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    invoke-static {v6, v1, v15}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " must have a method "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move/from16 v7, v20

    move-object/from16 v10, v23

    goto/16 :goto_4

    :cond_9
    move-object/from16 v19, v4

    move/from16 v20, v7

    invoke-virtual {v9, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v12, Lg/dqy;->c:I

    if-nez v0, :cond_a

    iget v0, v12, Lg/dqy;->b:I

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget v0, v12, Lg/dqy;->d:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    iget v0, v14, Lg/edp;->g:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setRotation(F)V

    iget v0, v14, Lg/edp;->k:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setRotationX(F)V

    iget v0, v14, Lg/edp;->m:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setRotationY(F)V

    iget v0, v14, Lg/edp;->d:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setScaleX(F)V

    iget v0, v14, Lg/edp;->f:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, v14, Lg/edp;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, v14, Lg/edp;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v4, v6

    if-lez v4, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    if-lez v4, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v9, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_b

    :cond_b
    iget v0, v14, Lg/edp;->h:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v14, Lg/edp;->h:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setPivotX(F)V

    :cond_c
    iget v0, v14, Lg/edp;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, v14, Lg/edp;->n:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_d
    :goto_b
    iget v0, v14, Lg/edp;->j:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, v14, Lg/edp;->l:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    iget v0, v14, Lg/edp;->c:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v0, v14, Lg/edp;->e:Z

    if-eqz v0, :cond_e

    iget v0, v14, Lg/edp;->i:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setElevation(F)V

    :cond_e
    :goto_c
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v19

    goto/16 :goto_0

    :cond_f
    move-object/from16 v19, v4

    const/16 v16, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/djm;

    if-nez v4, :cond_10

    goto :goto_d

    :cond_10
    iget-object v6, v4, Lg/djm;->a:Lg/crp;

    iget v7, v6, Lg/crp;->f:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_13

    new-instance v7, Lg/fqo;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x20

    new-array v9, v9, [I

    iput-object v9, v7, Lg/atw;->h:[I

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v7, Lg/atw;->d:Ljava/util/HashMap;

    iput-object v8, v7, Lg/atw;->e:Landroid/content/Context;

    new-instance v8, Lg/r;

    invoke-direct {v8}, Lg/gbi;-><init>()V

    const/4 v9, 0x0

    iput v9, v8, Lg/r;->b:I

    const/4 v10, 0x1

    iput-boolean v10, v8, Lg/r;->a:Z

    iput v9, v8, Lg/r;->c:I

    iput-boolean v9, v8, Lg/r;->d:Z

    iput-object v8, v7, Lg/fqo;->c:Lg/r;

    iput-object v8, v7, Lg/atw;->f:Lg/gbi;

    invoke-virtual {v7}, Lg/atw;->o()V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    iget-object v8, v6, Lg/crp;->c:[I

    if-eqz v8, :cond_11

    invoke-virtual {v7, v8}, Lg/atw;->setReferencedIds([I)V

    goto :goto_e

    :cond_11
    iget-object v8, v6, Lg/crp;->bg:Ljava/lang/String;

    if-eqz v8, :cond_12

    invoke-static {v7, v8}, Lg/ebt;->h(Lg/fqo;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v6, Lg/crp;->c:[I

    invoke-virtual {v7, v8}, Lg/atw;->setReferencedIds([I)V

    :cond_12
    :goto_e
    iget v8, v6, Lg/crp;->bh:I

    invoke-virtual {v7, v8}, Lg/fqo;->setType(I)V

    iget v8, v6, Lg/crp;->w:I

    invoke-virtual {v7, v8}, Lg/fqo;->setMargin(I)V

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->q()Lg/dnk;

    move-result-object v8

    invoke-virtual {v7}, Lg/atw;->o()V

    invoke-virtual {v4, v8}, Lg/djm;->g(Lg/dnk;)V

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_13
    const/4 v9, 0x0

    :goto_f
    iget-boolean v6, v6, Lg/crp;->z:Z

    if-eqz v6, :cond_14

    new-instance v6, Lg/dqd;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lg/dqd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setId(I)V

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->q()Lg/dnk;

    move-result-object v1

    invoke-virtual {v4, v1}, Lg/djm;->g(Lg/dnk;)V

    invoke-virtual {v2, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_15
    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v3, :cond_17

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lg/atw;

    if-eqz v1, :cond_16

    check-cast v0, Lg/atw;

    invoke-virtual {v0, v2}, Lg/atw;->l(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/djm;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/djm;->a:Lg/crp;

    const/4 v0, -0x1

    iput v0, p1, Lg/crp;->s:I

    iput v0, p1, Lg/crp;->k:I

    const/4 v0, 0x0

    iput v0, p1, Lg/crp;->bk:I

    const/high16 v0, -0x80000000

    iput v0, p1, Lg/crp;->as:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 21

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v1, Lg/ebt;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lg/dnk;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    iget-boolean v0, v1, Lg/ebt;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v9, Lg/djm;

    invoke-direct {v9}, Lg/djm;-><init>()V

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lg/djm;

    if-nez v9, :cond_3

    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_7

    :cond_3
    iget-object v10, v9, Lg/djm;->e:Lg/dqy;

    iget-object v11, v9, Lg/djm;->a:Lg/crp;

    iget-object v12, v9, Lg/djm;->b:Lg/edp;

    const-string v13, "\" not found on "

    const-string v14, " Custom Attribute \""

    const-string v15, "TransitionLayout"

    move/from16 v16, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v17, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move/from16 v18, v4

    iget-object v4, v1, Lg/ebt;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/frn;

    move-object/from16 v20, v4

    :try_start_0
    const-string v4, "BackgroundColor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lg/frn;

    invoke-direct {v5, v0, v4}, Lg/frn;-><init>(Lg/frn;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lg/frn;

    invoke-direct {v5, v0, v4}, Lg/frn;-><init>(Lg/frn;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_3
    invoke-static {v14, v1, v13}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_4
    invoke-static {v14, v1, v13}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must have a method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v4, v20

    goto/16 :goto_2

    :cond_5
    iput-object v2, v9, Lg/djm;->d:Ljava/util/HashMap;

    iput v8, v9, Lg/djm;->c:I

    iget v0, v7, Lg/dnk;->w:I

    iput v0, v11, Lg/crp;->d:I

    iget v0, v7, Lg/dnk;->aj:I

    iput v0, v11, Lg/crp;->at:I

    iget v0, v7, Lg/dnk;->bn:I

    iput v0, v11, Lg/crp;->ax:I

    iget v0, v7, Lg/dnk;->c:I

    iput v0, v11, Lg/crp;->e:I

    iget v0, v7, Lg/dnk;->as:I

    iput v0, v11, Lg/crp;->v:I

    iget v0, v7, Lg/dnk;->ax:I

    iput v0, v11, Lg/crp;->ap:I

    iget v0, v7, Lg/dnk;->d:I

    iput v0, v11, Lg/crp;->s:I

    iget v0, v7, Lg/dnk;->u:I

    iput v0, v11, Lg/crp;->k:I

    iget v0, v7, Lg/dnk;->ao:I

    iput v0, v11, Lg/crp;->ao:I

    iget v0, v7, Lg/dnk;->r:I

    iput v0, v11, Lg/crp;->ay:I

    iget v0, v7, Lg/dnk;->j:I

    iput v0, v11, Lg/crp;->bo:I

    iget v0, v7, Lg/dnk;->am:I

    iput v0, v11, Lg/crp;->an:I

    iget v0, v7, Lg/dnk;->ba:I

    iput v0, v11, Lg/crp;->ba:I

    iget v0, v7, Lg/dnk;->z:I

    iput v0, v11, Lg/crp;->aa:I

    iget v0, v7, Lg/dnk;->ag:I

    iput v0, v11, Lg/crp;->ah:I

    iget v0, v7, Lg/dnk;->bl:F

    iput v0, v11, Lg/crp;->aj:F

    iget v0, v7, Lg/dnk;->bb:F

    iput v0, v11, Lg/crp;->bm:F

    iget-object v0, v7, Lg/dnk;->o:Ljava/lang/String;

    iput-object v0, v11, Lg/crp;->l:Ljava/lang/String;

    iget v0, v7, Lg/dnk;->an:I

    iput v0, v11, Lg/crp;->b:I

    iget v0, v7, Lg/dnk;->ay:I

    iput v0, v11, Lg/crp;->az:I

    iget v0, v7, Lg/dnk;->bo:F

    iput v0, v11, Lg/crp;->u:F

    iget v0, v7, Lg/dnk;->av:I

    iput v0, v11, Lg/crp;->ad:I

    iget v0, v7, Lg/dnk;->x:I

    iput v0, v11, Lg/crp;->ab:I

    iget v0, v7, Lg/dnk;->q:I

    iput v0, v11, Lg/crp;->bl:I

    iget v0, v7, Lg/dnk;->bf:F

    iput v0, v11, Lg/crp;->ak:F

    iget v0, v7, Lg/dnk;->y:I

    iput v0, v11, Lg/crp;->t:I

    iget v0, v7, Lg/dnk;->au:I

    iput v0, v11, Lg/crp;->x:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v11, Lg/crp;->av:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v11, Lg/crp;->bf:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v11, Lg/crp;->bb:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v11, Lg/crp;->p:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v11, Lg/crp;->g:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v11, Lg/crp;->bk:I

    iget v0, v7, Lg/dnk;->aa:I

    iput v0, v11, Lg/crp;->h:I

    iget v0, v7, Lg/dnk;->bk:F

    iput v0, v11, Lg/crp;->aw:F

    iget v0, v7, Lg/dnk;->f:F

    iput v0, v11, Lg/crp;->y:F

    iget v0, v7, Lg/dnk;->af:I

    iput v0, v11, Lg/crp;->ai:I

    iget v0, v7, Lg/dnk;->al:I

    iput v0, v11, Lg/crp;->r:I

    iget-boolean v0, v7, Lg/dnk;->ah:Z

    iput-boolean v0, v11, Lg/crp;->bi:Z

    iget-boolean v0, v7, Lg/dnk;->ae:Z

    iput-boolean v0, v11, Lg/crp;->i:Z

    iget v0, v7, Lg/dnk;->g:I

    iput v0, v11, Lg/crp;->af:I

    iget v0, v7, Lg/dnk;->ad:I

    iput v0, v11, Lg/crp;->bp:I

    iget v0, v7, Lg/dnk;->ar:I

    iput v0, v11, Lg/crp;->bj:I

    iget v0, v7, Lg/dnk;->l:I

    iput v0, v11, Lg/crp;->aq:I

    iget v0, v7, Lg/dnk;->m:I

    iput v0, v11, Lg/crp;->ac:I

    iget v0, v7, Lg/dnk;->bc:I

    iput v0, v11, Lg/crp;->q:I

    iget v0, v7, Lg/dnk;->aq:F

    iput v0, v11, Lg/crp;->j:F

    iget v0, v7, Lg/dnk;->be:F

    iput v0, v11, Lg/crp;->bd:F

    iget-object v0, v7, Lg/dnk;->bp:Ljava/lang/String;

    iput-object v0, v11, Lg/crp;->al:Ljava/lang/String;

    iget v0, v7, Lg/dnk;->bm:I

    iput v0, v11, Lg/crp;->n:I

    iget v0, v7, Lg/dnk;->a:I

    iput v0, v11, Lg/crp;->as:I

    iget v0, v7, Lg/dnk;->ai:I

    iput v0, v11, Lg/crp;->ae:I

    iget v0, v7, Lg/dnk;->k:I

    iput v0, v11, Lg/crp;->bc:I

    iget v0, v7, Lg/dnk;->az:I

    iput v0, v11, Lg/crp;->ar:I

    iget v0, v7, Lg/dnk;->t:I

    iput v0, v11, Lg/crp;->m:I

    iget v0, v7, Lg/dnk;->ac:I

    iput v0, v11, Lg/crp;->be:I

    iget v0, v7, Lg/dnk;->bj:I

    iput v0, v11, Lg/crp;->o:I

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, v11, Lg/crp;->am:I

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, v11, Lg/crp;->ag:I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, v10, Lg/dqy;->b:I

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, v10, Lg/dqy;->d:F

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, v12, Lg/edp;->g:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, v12, Lg/edp;->k:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, v12, Lg/edp;->m:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v12, Lg/edp;->d:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, v12, Lg/edp;->f:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v1

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v7, v2, v4

    if-nez v7, :cond_6

    float-to-double v2, v1

    cmpl-double v7, v2, v4

    if-eqz v7, :cond_7

    :cond_6
    iput v0, v12, Lg/edp;->h:F

    iput v1, v12, Lg/edp;->n:F

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v12, Lg/edp;->j:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v12, Lg/edp;->l:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, v12, Lg/edp;->c:F

    iget-boolean v0, v12, Lg/edp;->e:Z

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, v12, Lg/edp;->i:F

    :cond_8
    instance-of v0, v6, Lg/fqo;

    if-eqz v0, :cond_9

    check-cast v6, Lg/fqo;

    invoke-virtual {v6}, Lg/fqo;->getAllowsGoneWidget()Z

    move-result v0

    iput-boolean v0, v11, Lg/crp;->au:Z

    invoke-virtual {v6}, Lg/atw;->getReferencedIds()[I

    move-result-object v0

    iput-object v0, v11, Lg/crp;->c:[I

    invoke-virtual {v6}, Lg/fqo;->getType()I

    move-result v0

    iput v0, v11, Lg/crp;->bh:I

    invoke-virtual {v6}, Lg/fqo;->getMargin()I

    move-result v0

    iput v0, v11, Lg/crp;->w:I

    :cond_9
    :goto_7
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final p(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "Error parsing resource: "

    const-string v1, "ConstraintSet"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lg/ebt;->i(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lg/djm;

    move-result-object v5

    const-string v6, "Guideline"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v5, Lg/djm;->a:Lg/crp;

    iput-boolean v4, v3, Lg/crp;->z:Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v3, p0, Lg/ebt;->f:Ljava/util/HashMap;

    iget v4, v5, Lg/djm;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    return-void
.end method
