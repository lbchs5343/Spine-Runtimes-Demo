package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class bvi {

    /* renamed from: a, reason: collision with root package name */
    public Object f12264a;

    /* renamed from: b, reason: collision with root package name */
    public Object f12265b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12266c;

    /* renamed from: d, reason: collision with root package name */
    public long f12267d;

    /* renamed from: e, reason: collision with root package name */
    public int f12268e;

    public String f(int i) {
        int i2;
        ByteBuffer byteBuffer = (ByteBuffer) this.f12264a;
        HashMap hashMap = (HashMap) this.f12265b;
        String str = (String) hashMap.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        int i3 = i * 4;
        String str2 = "⟨STRING_DECODE_ERROR⟩";
        if (i3 >= byteBuffer.limit() - 3 || (i2 = byteBuffer.getInt(i3)) < 0) {
            return "⟨STRING_DECODE_ERROR⟩";
        }
        long j = this.f12267d + i2;
        if (this.f12266c) {
            byte[] array = byteBuffer.array();
            int i4 = (int) j;
            if (i4 < array.length) {
                int i5 = i4 + ((array[i4] & 128) == 0 ? 1 : 2);
                int i6 = i5 + 1;
                int i7 = array[i5];
                if (i7 == 0) {
                    str2 = "";
                } else {
                    if ((i7 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                        i7 = ((i7 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) << 8) | (array[i6] & 255);
                        i6 = i5 + 2;
                    }
                    str2 = new String(Arrays.copyOfRange(array, i6, i7 + i6), gdu.f17951b);
                }
            }
        } else {
            byte[] array2 = byteBuffer.array();
            int i8 = (int) j;
            if (i8 + 2 < array2.length) {
                int length = array2.length;
                int i9 = i8 + ((array2[i8 + 1] & 128) != 0 ? 4 : 2);
                int i10 = i9;
                while (true) {
                    int i11 = i10 + 1;
                    if (i11 < length && (array2[i10] != 0 || array2[i11] != 0)) {
                        i10 += 2;
                    }
                }
                str2 = new String(Arrays.copyOfRange(array2, i9, i10), gdu.f17950a);
            }
        }
        hashMap.put(Integer.valueOf(i), str2);
        return str2;
    }
}
