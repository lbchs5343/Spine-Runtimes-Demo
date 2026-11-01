package g;

import java.util.Set;

/* loaded from: classes3.dex */
public interface cqh {
    Set _bd();

    void connect(fnt fntVar);

    void disconnect();

    void disconnect(String str);

    cqg[] getAvailableFeatures();

    String getEndpointPackageName();

    String getLastDisconnectMessage();

    int getMinApkVersion();

    void getRemoteService(fmp fmpVar, Set set);

    boolean isConnected();

    boolean isConnecting();

    void onUserSignOut(bsf bsfVar);

    boolean requiresGooglePlayServices();

    boolean requiresSignIn();
}
