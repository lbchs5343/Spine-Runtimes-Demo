package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public abstract class bso {

    /* renamed from: a, reason: collision with root package name */
    public static final bli f12134a;

    static {
        if (gbc.f17845c && gbc.f17844b) {
            int i = enu.f15875a;
        }
        f12134a = new bli(24);
    }

    public static String b(ByteBuffer byteBuffer, int i, int i2) {
        if (!byteBuffer.hasArray()) {
            return byteBuffer.isDirect() ? bli.u(byteBuffer, i, i2) : bli.u(byteBuffer, i, i2);
        }
        int arrayOffset = byteBuffer.arrayOffset();
        byte[] array = byteBuffer.array();
        int i3 = arrayOffset + i;
        f12134a.getClass();
        return bli.t(i3, array, i2);
    }

    public static int c(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int d(int i, byte[] bArr, int i2) {
        int i3 = i2 - i;
        byte b2 = bArr[i - 1];
        if (i3 == 0) {
            if (b2 > -12) {
                return -1;
            }
            return b2;
        }
        if (i3 == 1) {
            return c(b2, bArr[i]);
        }
        if (i3 != 2) {
            throw new AssertionError();
        }
        byte b3 = bArr[i];
        byte b4 = bArr[i + 1];
        if (b2 > -12 || b3 > -65 || b4 > -65) {
            return -1;
        }
        return (b4 << 16) ^ ((b3 << 8) ^ b2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        return r10 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int e(String str, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        char charAt;
        int length = str.length();
        int i6 = 0;
        while (true) {
            i3 = i + i2;
            if (i6 >= length || (i5 = i6 + i) >= i3 || (charAt = str.charAt(i6)) >= 128) {
                break;
            }
            bArr[i5] = (byte) charAt;
            i6++;
        }
        int i7 = i + i6;
        while (i6 < length) {
            char charAt2 = str.charAt(i6);
            if (charAt2 < 128 && i7 < i3) {
                bArr[i7] = (byte) charAt2;
                i7++;
            } else if (charAt2 < 2048 && i7 <= i3 - 2) {
                bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                bArr[i7 + 1] = (byte) ((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                i7 += 2;
            } else {
                if ((charAt2 >= 55296 && charAt2 <= 57343) || i7 > i3 - 3) {
                    if (i7 > i3 - 4) {
                        if (charAt2 >= 55296 && charAt2 <= 57343 && ((i4 = i6 + 1) == str.length() || !Character.isSurrogatePair(charAt2, str.charAt(i4)))) {
                            throw new tb(i6, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
                    }
                    int i8 = i6 + 1;
                    if (i8 != str.length()) {
                        char charAt3 = str.charAt(i8);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int i9 = i7 + 3;
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            bArr[i7] = (byte) ((codePoint >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                            bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                            i7 += 4;
                            bArr[i9] = (byte) ((codePoint & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                            i6 = i8;
                        } else {
                            i6 = i8;
                        }
                    }
                    throw new tb(i6 - 1, length);
                }
                bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                bArr[i7 + 1] = (byte) (((charAt2 >>> 6) & 63) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                bArr[i7 + 2] = (byte) ((charAt2 & '?') | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                i7 += 3;
            }
            i6++;
        }
        return i7;
    }

    public static int f(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = str.length();
                while (i2 < length2) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) < 65536) {
                                throw new tb(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }
}
