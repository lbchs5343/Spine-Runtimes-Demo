package g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.service.quicksettings.TileService;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class fmu {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f17042a = Pattern.compile("[0-9]+s");

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f17043b = Charset.forName("UTF-8");

    /* renamed from: c, reason: collision with root package name */
    public final Context f17044c;

    /* renamed from: d, reason: collision with root package name */
    public final boa f17045d;

    /* renamed from: e, reason: collision with root package name */
    public final dd f17046e = new dd();

    public fmu(Context context, boa boaVar) {
        this.f17044c = context;
        this.f17045d = boaVar;
    }

    public static void f(HttpURLConnection httpURLConnection) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:17.0.1");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            k(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static long g(String str) {
        ckd.ar("Invalid Expiration Timestamp.", f17042a.matcher(str).matches());
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    public static gug h(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f17043b));
        dzh d2 = elz.d();
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        String str3 = null;
        elz elzVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(abn.EXTRA_UA_APP_NAME)) {
                str = jsonReader.nextString();
            } else if (nextName.equals("fid")) {
                str2 = jsonReader.nextString();
            } else if (nextName.equals("refreshToken")) {
                str3 = jsonReader.nextString();
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals(TileService.EXTRA_TOKEN)) {
                        d2.i = jsonReader.nextString();
                    } else if (nextName2.equals("expiresIn")) {
                        d2.f15121f = Long.valueOf(g(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                elz t = d2.t();
                jsonReader.endObject();
                elzVar = t;
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new gug(str, str2, str3, elzVar, of.OK);
    }

    public static URL i(String str) {
        try {
            return new URL("https://firebaseinstallations.googleapis.com/v1/" + str);
        } catch (MalformedURLException e2) {
            throw new drg(e2.getMessage(), ety.UNAVAILABLE);
        }
    }

    public static elz j(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f17043b));
        dzh d2 = elz.d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(TileService.EXTRA_TOKEN)) {
                d2.i = jsonReader.nextString();
            } else if (nextName.equals("expiresIn")) {
                d2.f15121f = Long.valueOf(g(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        d2.f15122g = deh.OK;
        return d2.t();
    }

    public static void k(HttpURLConnection httpURLConnection, byte[] bArr) {
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void l(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        String str4 = null;
        if (errorStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f17043b));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str)) {
            return;
        }
        new StringBuilder(", ").append(str);
    }

    public static void m(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:17.0.1");
            k(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0098 A[Catch: NameNotFoundException -> 0x00ac, TryCatch #4 {NameNotFoundException -> 0x00ac, blocks: (B:7:0x005f, B:9:0x0071, B:16:0x007b, B:20:0x0088, B:22:0x0098, B:26:0x00ae, B:28:0x00b8, B:30:0x00d1), top: B:6:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ae A[Catch: NameNotFoundException -> 0x00ac, TryCatch #4 {NameNotFoundException -> 0x00ac, blocks: (B:7:0x005f, B:9:0x0071, B:16:0x007b, B:20:0x0088, B:22:0x0098, B:26:0x00ae, B:28:0x00b8, B:30:0x00d1), top: B:6:0x005f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final HttpURLConnection n(URL url, String str) {
        PackageInfo c2;
        Signature[] signatureArr;
        byte[] bArr;
        MessageDigest messageDigest;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            Context context = this.f17044c;
            httpURLConnection.addRequestProperty("X-Android-Package", context.getPackageName());
            bsm bsmVar = (bsm) this.f17045d.get();
            if (bsmVar != null) {
                try {
                    httpURLConnection.addRequestProperty("x-firebase-client", (String) byh.x(((bfq) bsmVar).g()));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                } catch (ExecutionException unused2) {
                }
            }
            String str2 = null;
            try {
                c2 = chk.c(context).c(64, context.getPackageName());
                signatureArr = c2.signatures;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e("ContentValues", "No such package: " + context.getPackageName(), e2);
            }
            if (signatureArr != null && signatureArr.length == 1) {
                int i = 0;
                while (true) {
                    if (i >= 2) {
                        messageDigest = null;
                        break;
                    }
                    try {
                        messageDigest = MessageDigest.getInstance("SHA1");
                    } catch (NoSuchAlgorithmException unused3) {
                    }
                    if (messageDigest != null) {
                        break;
                    }
                    i++;
                }
                if (messageDigest != null) {
                    bArr = messageDigest.digest(c2.signatures[0].toByteArray());
                    if (bArr != null) {
                        Log.e("ContentValues", "Could not get fingerprint hash for package: " + context.getPackageName());
                    } else {
                        int length = bArr.length;
                        StringBuilder sb = new StringBuilder(length + length);
                        for (int i2 = 0; i2 < length; i2++) {
                            char[] cArr = aky.f10423c;
                            sb.append(cArr[(bArr[i2] & 240) >>> 4]);
                            sb.append(cArr[bArr[i2] & 15]);
                        }
                        str2 = sb.toString();
                    }
                    httpURLConnection.addRequestProperty("X-Android-Cert", str2);
                    httpURLConnection.addRequestProperty("x-goog-api-key", str);
                    return httpURLConnection;
                }
            }
            bArr = null;
            if (bArr != null) {
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", str2);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused4) {
            throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
        }
    }
}
