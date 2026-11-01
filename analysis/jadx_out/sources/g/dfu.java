package g;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;

/* loaded from: classes3.dex */
public final class dfu implements ciq {

    /* renamed from: a, reason: collision with root package name */
    public final String f14103a;

    public dfu(String str) {
        this.f14103a = str;
    }

    @Override // g.ciq
    public final boolean zza(String str) {
        boolean z = false;
        try {
            agd.c("Pinging URL: " + str);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URI(str).toURL().openConnection();
            try {
                mx mxVar = cbv.f12612a.f12615d;
                String str2 = this.f14103a;
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setReadTimeout(60000);
                if (str2 != null) {
                    httpURLConnection.setRequestProperty("User-Agent", str2);
                }
                httpURLConnection.setUseCaches(false);
                dzz dzzVar = new dzz();
                dzzVar.i(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                dzzVar.j(httpURLConnection, responseCode);
                if (responseCode >= 200 && responseCode < 300) {
                    z = true;
                    return z;
                }
                agd.b("Received non-success response code " + responseCode + " from pinging URL: " + str);
                return z;
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e2) {
            e = e2;
            agd.b("Error while pinging URL: " + str + ". " + e.getMessage());
            return false;
        } catch (IndexOutOfBoundsException e3) {
            e = e3;
            agd.b("Error while parsing ping URL: " + str + ". " + e.getMessage());
            return false;
        } catch (RuntimeException e4) {
            e = e4;
            agd.b("Error while pinging URL: " + str + ". " + e.getMessage());
            return false;
        } catch (URISyntaxException e5) {
            e = e5;
            agd.b("Error while parsing ping URL: " + str + ". " + e.getMessage());
            return false;
        } finally {
        }
    }
}
