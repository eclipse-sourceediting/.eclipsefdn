local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-sourceediting') {
  settings+: {
    description: "",
    name: "Eclipse WTP Source Editing",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('sourceediting') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Code repository for the Eclipse Web Tools Platform's Source Editing project",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
  ],
}