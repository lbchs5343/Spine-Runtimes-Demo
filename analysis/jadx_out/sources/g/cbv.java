package g;

import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzbxo;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class cbv {

    /* renamed from: a, reason: collision with root package name */
    public static final cbv f12612a = new cbv();

    /* renamed from: b, reason: collision with root package name */
    public final akx f12613b;

    /* renamed from: c, reason: collision with root package name */
    public final Random f12614c;

    /* renamed from: d, reason: collision with root package name */
    public final mx f12615d;

    /* renamed from: e, reason: collision with root package name */
    public final ph f12616e;

    /* renamed from: f, reason: collision with root package name */
    public final String f12617f;

    public cbv() {
        mx mxVar = new mx();
        mxVar.h = -1.0f;
        ejy ejyVar = new ejy("com.google.android.gms.ads.AdManagerCreatorImpl");
        dfk dfkVar = new dfk("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl", 1);
        dfk dfkVar2 = new dfk("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl", 0);
        zzbhx zzbhxVar = new zzbhx();
        new zzbxo();
        zzbtd zzbtdVar = new zzbtd();
        new zzbhy();
        dfk dfkVar3 = new dfk("com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl", 2);
        ph phVar = new ph();
        phVar.f19811c = ejyVar;
        phVar.f19813e = dfkVar;
        phVar.f19814f = dfkVar2;
        phVar.f19809a = zzbhxVar;
        phVar.f19810b = zzbtdVar;
        phVar.f19815g = dfkVar3;
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        akx akxVar = new akx(0, 243799000, true);
        Random random = new Random();
        this.f12615d = mxVar;
        this.f12616e = phVar;
        this.f12617f = bigInteger;
        this.f12613b = akxVar;
        this.f12614c = random;
    }
}
