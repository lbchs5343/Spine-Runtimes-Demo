package g;

import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class gei implements Serializable, Comparable {
    public static final gei n = new gei(new byte[0]);
    private static final long serialVersionUID = 1;
    private final byte[] data;
    public transient int o;
    public transient String p;

    public gei(byte[] bArr) {
        bff.p(bArr, "data");
        this.data = bArr;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            throw new IllegalArgumentException(awf.ac(readInt, "byteCount < 0: ").toString());
        }
        byte[] bArr = new byte[readInt];
        int i = 0;
        while (i < readInt) {
            int read = objectInputStream.read(bArr, i, readInt - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
        gei geiVar = new gei(bArr);
        Field declaredField = gei.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, geiVar.data);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public boolean c(int i, byte[] bArr, int i2, int i3) {
        bff.p(bArr, "other");
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.data;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && acw.ab(bArr2, i, bArr, i2, i3);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        gei geiVar = (gei) obj;
        bff.p(geiVar, "other");
        int d2 = d();
        int d3 = geiVar.d();
        int min = Math.min(d2, d3);
        for (int i = 0; i < min; i++) {
            int m = m(i) & 255;
            int m2 = geiVar.m(i) & 255;
            if (m != m2) {
                return m < m2 ? -1 : 1;
            }
        }
        if (d2 == d3) {
            return 0;
        }
        return d2 < d3 ? -1 : 1;
    }

    public int d() {
        return this.data.length;
    }

    public void e(clq clqVar, int i) {
        clqVar.af(i, this.data);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gei) {
            gei geiVar = (gei) obj;
            int d2 = geiVar.d();
            byte[] bArr = this.data;
            if (d2 == bArr.length && geiVar.c(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public String f() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = eg.f15470e;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public String g() {
        byte[] bArr = this.data;
        byte[] bArr2 = aya.f11049a;
        bff.p(bArr, "<this>");
        bff.p(bArr2, "map");
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b2 = bArr[i];
            int i3 = i + 2;
            byte b3 = bArr[i + 1];
            i += 3;
            byte b4 = bArr[i3];
            bArr3[i2] = bArr2[(b2 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[((b2 & 3) << 4) | ((b3 & 255) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr2[((b3 & 15) << 2) | ((b4 & 255) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr2[b4 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b5 = bArr[i];
            bArr3[i2] = bArr2[(b5 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[(b5 & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        } else if (length2 == 2) {
            int i5 = i + 1;
            byte b6 = bArr[i];
            byte b7 = bArr[i5];
            bArr3[i2] = bArr2[(b6 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[((b6 & 3) << 4) | ((b7 & 255) >> 4)];
            bArr3[i2 + 2] = bArr2[(b7 & 15) << 2];
            bArr3[i2 + 3] = 61;
        }
        return new String(bArr3, ejm.f15667a);
    }

    public byte[] h() {
        return this.data;
    }

    public int hashCode() {
        int i = this.o;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.data);
        this.o = hashCode;
        return hashCode;
    }

    public boolean j(gei geiVar, int i) {
        bff.p(geiVar, "other");
        return geiVar.c(0, this.data, 0, i);
    }

    public gei k(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.data, 0, d());
        byte[] digest = messageDigest.digest();
        bff.d(digest);
        return new gei(digest);
    }

    public gei l() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 >= 65 && b2 <= 90) {
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                bff.e(copyOf, "copyOf(this, size)");
                copyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b3 = copyOf[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        copyOf[i2] = (byte) (b3 + 32);
                    }
                }
                return new gei(copyOf);
            }
            i++;
        }
    }

    public byte m(int i) {
        return this.data[i];
    }

    public final String q() {
        String str = this.p;
        if (str != null) {
            return str;
        }
        byte[] h = h();
        bff.p(h, "<this>");
        String str2 = new String(h, ejm.f15667a);
        this.p = str2;
        return str2;
    }

    public final byte[] r() {
        return this.data;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x00f2, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x012c, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0130, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00d2, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x016f, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0176, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0168, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x01a6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x01a9, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x01ac, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x013c, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x01af, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0092, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c0, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0081, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00fa, code lost:
    
        if (r6 == 64) goto L180;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        gei geiVar;
        byte b2;
        int i;
        byte[] bArr = this.data;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        loop0: while (true) {
            if (i2 >= length) {
                break;
            }
            byte b3 = bArr[i2];
            if (b3 >= 0) {
                int i5 = i4 + 1;
                if (i4 == 64) {
                    break;
                }
                if ((b3 != 10 && b3 != 13 && ((b3 >= 0 && b3 < 32) || (Byte.MAX_VALUE <= b3 && b3 < 160))) || b3 == 65533) {
                    break;
                }
                i3 += b3 < 65536 ? 1 : 2;
                i2++;
                while (true) {
                    i4 = i5;
                    if (i2 < length && (b2 = bArr[i2]) >= 0) {
                        i2++;
                        i5 = i4 + 1;
                        if (i4 == 64) {
                            break loop0;
                        }
                        if ((b2 != 10 && b2 != 13 && ((b2 >= 0 && b2 < 32) || (Byte.MAX_VALUE <= b2 && b2 < 160))) || b2 == 65533) {
                            break loop0;
                        }
                        i3 += b2 < 65536 ? 1 : 2;
                    }
                }
            } else if ((b3 >> 5) == -2) {
                int i6 = i2 + 1;
                if (length > i6) {
                    byte b4 = bArr[i6];
                    if ((b4 & 192) == 128) {
                        int i7 = (b4 ^ 3968) ^ (b3 << 6);
                        if (i7 >= 128) {
                            i = i4 + 1;
                            if (i4 == 64) {
                                break;
                            }
                            if ((i7 != 10 && i7 != 13 && ((i7 >= 0 && i7 < 32) || (127 <= i7 && i7 < 160))) || i7 == 65533) {
                                break;
                            }
                            i3 += i7 < 65536 ? 1 : 2;
                            i2 += 2;
                            i4 = i;
                        }
                    }
                }
            } else if ((b3 >> 4) == -2) {
                int i8 = i2 + 2;
                if (length > i8) {
                    byte b5 = bArr[i2 + 1];
                    if ((b5 & 192) == 128) {
                        byte b6 = bArr[i8];
                        if ((b6 & 192) == 128) {
                            int i9 = ((b6 ^ (-123008)) ^ (b5 << 6)) ^ (b3 << 12);
                            if (i9 >= 2048) {
                                if (55296 > i9 || i9 >= 57344) {
                                    i = i4 + 1;
                                    if (i4 == 64) {
                                        break;
                                    }
                                    if ((i9 != 10 && i9 != 13 && ((i9 >= 0 && i9 < 32) || (127 <= i9 && i9 < 160))) || i9 == 65533) {
                                        break;
                                    }
                                    i3 += i9 < 65536 ? 1 : 2;
                                    i2 += 3;
                                    i4 = i;
                                }
                            }
                        }
                    }
                }
            } else if ((b3 >> 3) == -2) {
                int i10 = i2 + 3;
                if (length > i10) {
                    byte b7 = bArr[i2 + 1];
                    if ((b7 & 192) == 128) {
                        byte b8 = bArr[i2 + 2];
                        if ((b8 & 192) == 128) {
                            byte b9 = bArr[i10];
                            if ((b9 & 192) == 128) {
                                int i11 = (((b9 ^ 3678080) ^ (b8 << 6)) ^ (b7 << 12)) ^ (b3 << 18);
                                if (i11 <= 1114111) {
                                    if (55296 > i11 || i11 >= 57344) {
                                        if (i11 >= 65536) {
                                            i = i4 + 1;
                                            if (i4 == 64) {
                                                break;
                                            }
                                            if ((i11 != 10 && i11 != 13 && ((i11 >= 0 && i11 < 32) || (127 <= i11 && i11 < 160))) || i11 == 65533) {
                                                break;
                                            }
                                            i3 += i11 < 65536 ? 1 : 2;
                                            i2 += 4;
                                            i4 = i;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (i3 != -1) {
            String q = q();
            String substring = q.substring(0, i3);
            bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String cb = dmc.cb(dmc.cb(dmc.cb(substring, "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (i3 >= q.length()) {
                return "[text=" + cb + ']';
            }
            return "[size=" + this.data.length + " text=" + cb + "…]";
        }
        if (this.data.length <= 64) {
            return "[hex=" + f() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(this.data.length);
        sb.append(" hex=");
        byte[] bArr2 = this.data;
        if (64 > bArr2.length) {
            throw new IllegalArgumentException(awf.s(new StringBuilder("endIndex > length("), this.data.length, ')').toString());
        }
        if (64 == bArr2.length) {
            geiVar = this;
        } else {
            cro.aq(64, bArr2.length);
            byte[] copyOfRange = Arrays.copyOfRange(bArr2, 0, 64);
            bff.e(copyOfRange, "copyOfRange(...)");
            geiVar = new gei(copyOfRange);
        }
        sb.append(geiVar.f());
        sb.append("…]");
        return sb.toString();
    }
}
