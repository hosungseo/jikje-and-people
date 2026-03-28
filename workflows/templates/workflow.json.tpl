{
  "name": "{{name}}",
  "title": "{{title}}",
  "kind": "{{kind}}",
  "status": "draft",
  "schedule": {
    "type": "cron",
    "expr": "{{cron_expr}}",
    "timezone": "Asia/Seoul"
  },
  "inputs": ["{{input_1}}", "{{input_2}}"],
  "outputs": ["{{output_1}}", "{{output_2}}"],
  "owner": "seohoseong",
  "safety": {
    "external_send": false,
    "destructive": false,
    "requires_confirmation": false
  }
}
