package g;

import android.util.Log;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class ebm {

    /* renamed from: a, reason: collision with root package name */
    public final int f15245a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15246b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f15247c;

    public ebm(int i, byte[] bArr, int i2) {
        this.f15245a = i;
        this.f15246b = i2;
        this.f15247c = bArr;
    }

    public static ebm d(long j, ByteOrder byteOrder) {
        long[] jArr = {j};
        ByteBuffer wrap = ByteBuffer.wrap(new byte[jo.l[4]]);
        wrap.order(byteOrder);
        wrap.putInt((int) jArr[0]);
        return new ebm(4, wrap.array(), 1);
    }

    public static ebm e(gxz gxzVar, ByteOrder byteOrder) {
        gxz[] gxzVarArr = {gxzVar};
        ByteBuffer wrap = ByteBuffer.wrap(new byte[jo.l[5]]);
        wrap.order(byteOrder);
        gxz gxzVar2 = gxzVarArr[0];
        wrap.putInt((int) gxzVar2.f18987a);
        wrap.putInt((int) gxzVar2.f18988b);
        return new ebm(5, wrap.array(), 1);
    }

    public static ebm f(int i, ByteOrder byteOrder) {
        ByteBuffer wrap = ByteBuffer.wrap(new byte[jo.l[3]]);
        wrap.order(byteOrder);
        wrap.putShort((short) new int[]{i}[0]);
        return new ebm(3, wrap.array(), 1);
    }

    public final double g(ByteOrder byteOrder) {
        Object j = j(byteOrder);
        if (j == null) {
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
        if (j instanceof String) {
            return Double.parseDouble((String) j);
        }
        if (j instanceof long[]) {
            if (((long[]) j).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (j instanceof int[]) {
            if (((int[]) j).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (j instanceof double[]) {
            double[] dArr = (double[]) j;
            if (dArr.length == 1) {
                return dArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(j instanceof gxz[])) {
            throw new NumberFormatException("Couldn't find a double value");
        }
        gxz[] gxzVarArr = (gxz[]) j;
        if (gxzVarArr.length != 1) {
            throw new NumberFormatException("There are more than one component");
        }
        gxz gxzVar = gxzVarArr[0];
        return gxzVar.f18987a / gxzVar.f18988b;
    }

    public final int h(ByteOrder byteOrder) {
        Object j = j(byteOrder);
        if (j == null) {
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }
        if (j instanceof String) {
            return Integer.parseInt((String) j);
        }
        if (j instanceof long[]) {
            long[] jArr = (long[]) j;
            if (jArr.length == 1) {
                return (int) jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(j instanceof int[])) {
            throw new NumberFormatException("Couldn't find a integer value");
        }
        int[] iArr = (int[]) j;
        if (iArr.length == 1) {
            return iArr[0];
        }
        throw new NumberFormatException("There are more than one component");
    }

    public final String i(ByteOrder byteOrder) {
        Object j = j(byteOrder);
        if (j == null) {
            return null;
        }
        if (j instanceof String) {
            return (String) j;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (j instanceof long[]) {
            long[] jArr = (long[]) j;
            while (i < jArr.length) {
                sb.append(jArr[i]);
                i++;
                if (i != jArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (j instanceof int[]) {
            int[] iArr = (int[]) j;
            while (i < iArr.length) {
                sb.append(iArr[i]);
                i++;
                if (i != iArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (j instanceof double[]) {
            double[] dArr = (double[]) j;
            while (i < dArr.length) {
                sb.append(dArr[i]);
                i++;
                if (i != dArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (!(j instanceof gxz[])) {
            return null;
        }
        gxz[] gxzVarArr = (gxz[]) j;
        while (i < gxzVarArr.length) {
            sb.append(gxzVarArr[i].f18987a);
            sb.append('/');
            sb.append(gxzVarArr[i].f18988b);
            i++;
            if (i != gxzVarArr.length) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v20, types: [int[]] */
    /* JADX WARN: Type inference failed for: r14v21, types: [long[]] */
    /* JADX WARN: Type inference failed for: r14v22, types: [g.gxz[]] */
    /* JADX WARN: Type inference failed for: r14v23, types: [int[]] */
    /* JADX WARN: Type inference failed for: r14v24, types: [int[]] */
    /* JADX WARN: Type inference failed for: r14v25, types: [g.gxz[]] */
    /* JADX WARN: Type inference failed for: r14v26, types: [double[]] */
    /* JADX WARN: Type inference failed for: r14v27, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v28, types: [double[]] */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.lang.String] */
    public final Serializable j(ByteOrder byteOrder) {
        bia biaVar;
        ?? str;
        byte b2;
        byte[] bArr = this.f15247c;
        bia biaVar2 = null;
        try {
            biaVar = new bia(bArr);
            try {
                biaVar.f11632f = byteOrder;
                int i = this.f15245a;
                int i2 = 0;
                int i3 = this.f15246b;
                switch (i) {
                    case 1:
                    case 6:
                        if (bArr.length == 1 && (b2 = bArr[0]) >= 0 && b2 <= 1) {
                            String str2 = new String(new char[]{(char) (b2 + 48)});
                            try {
                                biaVar.close();
                                return str2;
                            } catch (IOException e2) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e2);
                                return str2;
                            }
                        }
                        str = new String(bArr, jo.f19500f);
                        break;
                        break;
                    case 2:
                    case 7:
                        if (i3 >= jo.q.length) {
                            int i4 = 0;
                            while (true) {
                                byte[] bArr2 = jo.q;
                                if (i4 >= bArr2.length) {
                                    i2 = bArr2.length;
                                } else if (bArr[i4] == bArr2[i4]) {
                                    i4++;
                                }
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        while (i2 < i3) {
                            byte b3 = bArr[i2];
                            if (b3 == 0) {
                                str = sb.toString();
                                break;
                            } else {
                                if (b3 >= 32) {
                                    sb.append((char) b3);
                                } else {
                                    sb.append('?');
                                }
                                i2++;
                            }
                        }
                        str = sb.toString();
                    case 3:
                        str = new int[i3];
                        while (i2 < i3) {
                            str[i2] = biaVar.readUnsignedShort();
                            i2++;
                        }
                    case 4:
                        str = new long[i3];
                        while (i2 < i3) {
                            str[i2] = biaVar.readInt() & 4294967295L;
                            i2++;
                        }
                    case 5:
                        str = new gxz[i3];
                        while (i2 < i3) {
                            str[i2] = new gxz(biaVar.readInt() & 4294967295L, biaVar.readInt() & 4294967295L);
                            i2++;
                        }
                    case 8:
                        str = new int[i3];
                        while (i2 < i3) {
                            str[i2] = biaVar.readShort();
                            i2++;
                        }
                    case 9:
                        str = new int[i3];
                        while (i2 < i3) {
                            str[i2] = biaVar.readInt();
                            i2++;
                        }
                    case 10:
                        str = new gxz[i3];
                        while (i2 < i3) {
                            str[i2] = new gxz(biaVar.readInt(), biaVar.readInt());
                            i2++;
                        }
                    case 11:
                        str = new double[i3];
                        while (i2 < i3) {
                            str[i2] = biaVar.readFloat();
                            i2++;
                        }
                    case 12:
                        str = new double[i3];
                        while (i2 < i3) {
                            str[i2] = biaVar.readDouble();
                            i2++;
                        }
                    default:
                        try {
                            biaVar.close();
                            return null;
                        } catch (IOException e3) {
                            Log.e("ExifInterface", "IOException occurred while closing InputStream", e3);
                            return null;
                        }
                }
                try {
                    biaVar.close();
                    return str;
                } catch (IOException e4) {
                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e4);
                    return str;
                }
            } catch (IOException unused) {
                if (biaVar != null) {
                    try {
                        biaVar.close();
                    } catch (IOException e5) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e5);
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                biaVar2 = biaVar;
                if (biaVar2 != null) {
                    try {
                        biaVar2.close();
                    } catch (IOException e6) {
                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e6);
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
            biaVar = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(jo.s[this.f15245a]);
        sb.append(", data length:");
        return awf.x(sb, this.f15247c.length, ")");
    }
}
