package g;

import j$.util.Objects;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public final class gwb {

    /* renamed from: a, reason: collision with root package name */
    public final long f18856a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18857b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18858c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18859d;

    public gwb(long j, int i, long j2, int i2) {
        this.f18857b = i;
        this.f18858c = i2;
        this.f18859d = j;
        this.f18856a = j2;
    }

    public static gwb e(File file) {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            gwb gwbVar = new gwb(dataInputStream.readLong(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readInt());
            dataInputStream.close();
            return gwbVar;
        } finally {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof gwb)) {
            gwb gwbVar = (gwb) obj;
            if (this.f18858c == gwbVar.f18858c && this.f18859d == gwbVar.f18859d && this.f18857b == gwbVar.f18857b && this.f18856a == gwbVar.f18856a) {
                return true;
            }
        }
        return false;
    }

    public final void f(File file) {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f18857b);
            dataOutputStream.writeInt(this.f18858c);
            dataOutputStream.writeLong(this.f18859d);
            dataOutputStream.writeLong(this.f18856a);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f18858c), Long.valueOf(this.f18859d), Integer.valueOf(this.f18857b), Long.valueOf(this.f18856a));
    }
}
