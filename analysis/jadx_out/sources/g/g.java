package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static g f17764a;

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f17765b = {"*", "FCM", "GCM", ""};

    /* renamed from: c, reason: collision with root package name */
    public final String f17766c;

    /* renamed from: d, reason: collision with root package name */
    public final SharedPreferences f17767d;

    public g(Context context) {
        this.f17766c = context.getPackageName();
        this.f17767d = context.getSharedPreferences("paid_storage_sp", 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        if (r1.isEmpty() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public g(rm rmVar) {
        rmVar.p();
        this.f17767d = rmVar.f19913g.getSharedPreferences("com.google.android.gms.appid", 0);
        rmVar.p();
        fpy fpyVar = rmVar.k;
        String str = fpyVar.f17217b;
        if (str == null) {
            rmVar.p();
            str = fpyVar.f17220e;
            if (str.startsWith("1:") || str.startsWith("2:")) {
                String[] split = str.split(":");
                if (split.length == 4) {
                    str = split[1];
                }
                str = null;
            }
        }
        this.f17766c = str;
    }

    public void e(String str) {
        if (!this.f17767d.edit().remove(str).commit()) {
            throw new IOException(awf.t("Failed to remove ", str, " for app ", this.f17766c));
        }
    }

    public String f() {
        String string;
        synchronized (this.f17767d) {
            string = this.f17767d.getString("|S|id", null);
        }
        return string;
    }

    public String g() {
        PublicKey publicKey;
        synchronized (this.f17767d) {
            String str = null;
            String string = this.f17767d.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e2) {
                e2.toString();
                publicKey = null;
            }
            if (publicKey == null) {
                return null;
            }
            try {
                byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
                digest[0] = (byte) (((digest[0] & 15) + 112) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                str = Base64.encodeToString(digest, 0, 8, 11);
            } catch (NoSuchAlgorithmException unused) {
            }
            return str;
        }
    }

    public void h(Object obj, String str) {
        boolean commit;
        boolean z = obj instanceof String;
        String str2 = this.f17766c;
        SharedPreferences sharedPreferences = this.f17767d;
        if (z) {
            commit = sharedPreferences.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            commit = sharedPreferences.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else if (obj instanceof Boolean) {
            commit = sharedPreferences.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        } else {
            if (!(obj instanceof Integer)) {
                Log.e("GpidLifecycleSPHandler", "Unexpected object class " + String.valueOf(obj.getClass()) + " for app " + str2);
                throw new IOException(awf.t("Failed to store ", str, " for app ", str2));
            }
            commit = sharedPreferences.edit().putInt(str, ((Integer) obj).intValue()).commit();
        }
        if (commit) {
            return;
        }
        throw new IOException(awf.t("Failed to store ", str, " for app ", str2));
    }
}
