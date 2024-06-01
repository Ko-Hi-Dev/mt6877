package org.pixelexperience.dt2w.mt6877;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.UserHandle;

public class OnBootCompleteReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Intent sIntent = new Intent(context, DT2WServicemt6877.class);
        context.startServiceAsUser(sIntent, UserHandle.CURRENT);
    }
}
