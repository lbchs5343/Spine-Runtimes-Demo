package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzfpk {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8140c = f8138a;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f8141d = f8139b;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8139b = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8138a = {-110, -13, -34, 70, -83, 43, 97, 21, -44, 16, -54, -125, -28, -57, -125, -127, -7, 17, 102, -69, 116, -121, -79, 43, -13, 120, 58, 55, -29, -108, 95, 83};

    public final boolean zza(File file) throws GeneralSecurityException {
        try {
            X509Certificate[][] zza = zzaov.zza(file.getAbsolutePath());
            if (zza.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(zza[0][0].getEncoded());
            if (Arrays.equals(this.f8141d, digest)) {
                return true;
            }
            return !"user".equals(Build.TYPE) && Arrays.equals(this.f8140c, digest);
        } catch (zzaor e2) {
            throw new GeneralSecurityException("Package is not signed", e2);
        } catch (IOException e3) {
            e = e3;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (RuntimeException e4) {
            e = e4;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        }
    }
}
