package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class i0 extends pblb.pgla {
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj, String str) {
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        Context context = pgla.f21199a.f21200b;
        String str2 = i1.f21158a;
        int i2 = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context).getAbsolutePath());
            i = 0;
            sb.append((String) pblk.a(16777217, 0, 0L, "97ed96", new byte[]{103}));
            String str3 = i1.f21158a;
            sb.append(str3);
            String sb2 = sb.toString();
            File file = new File(sb2);
            if (file.exists()) {
                i2 = 2;
                file.delete();
            }
            inputStream = context.getResources().getAssets().open(str3);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Throwable unused) {
                byteArrayOutputStream = null;
                try {
                    pblk.a(16777217, 0, 0L, "18fdbe", new byte[]{33, 57, 42, 23});
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        i = i2;
                        byteArrayOutputStream.close();
                        i2 = i;
                    }
                    return Integer.valueOf(i2);
                } finally {
                }
            }
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr, 0, 4096);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(sb2);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.close();
                if (byteArrayOutputStream.size() <= 0) {
                    i = 3;
                } else if (!new File(sb2).exists()) {
                    i = i2;
                }
                try {
                    inputStream.close();
                } catch (Throwable unused3) {
                }
            } catch (Throwable unused4) {
                pblk.a(16777217, 0, 0L, "18fdbe", new byte[]{33, 57, 42, 23});
                if (inputStream != null) {
                }
                if (byteArrayOutputStream != null) {
                }
                return Integer.valueOf(i2);
            }
        } catch (Throwable unused5) {
            inputStream = null;
        }
        try {
            byteArrayOutputStream.close();
        } catch (Throwable unused6) {
        }
        i2 = i;
        return Integer.valueOf(i2);
    }
}
