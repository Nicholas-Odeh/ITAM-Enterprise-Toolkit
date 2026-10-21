# Connectors

Skills in this plugin name tools by **category**, such as `~~ITSM`, never by product. Any MCP server in a category works. Every skill also works with no connector at all, from pasted or uploaded exports. A connector adds two things only: **live reads**, and **drafted writes the user approves**.

| Category | Placeholder | Typical products | Used by |
|---|---|---|---|
| ITSM / ITAM platform | `~~ITSM` | ServiceNow, Jira Service Management, Freshservice, Ivanti | servicenow-itam, hardware lifecycle, reconciliation, change requests, status reports |
| CMDB / discovery | `~~CMDB` | ServiceNow CMDB, Device42, Lansweeper | reconciliation, servicenow-itam, risk/audit |
| Endpoint management | `~~endpoint management` | Microsoft Intune, MECM/ConfigMgr, Jamf, Workspace ONE | imaging/provisioning, reconciliation, lifecycle, licensing |
| Document repository | `~~document repository` | SharePoint Online, OneDrive, Google Drive, Box | sharepoint-itam-records, disposition evidence, contracts, SOPs |
| Knowledge base | `~~knowledge base` | Confluence, Notion, ServiceNow Knowledge, SharePoint pages | SOPs, runbooks, policies |
| Procurement / ERP | `~~procurement` | Coupa, SAP Ariba, Oracle, SAP, Workday | acquisition, financial, vendor/contract |
| Finance / fixed assets | `~~finance` | SAP, Oracle Financials, NetSuite, Workday Financials | financial management, reconciliation |
| HR system | `~~HR` | Workday, SuccessFactors, ServiceNow HRSD | joiner-mover-leaver, reclamation |
| Chat | `~~chat` | Microsoft Teams, Slack | status reports, change communications |
| Email | `~~email` | Microsoft 365, Gmail | vendor follow-ups, leaver reminders (drafts only) |
| Project tracker | `~~project tracker` | Jira, Azure DevOps, Asana, Planner | roadmaps, change implementation tasks |
| Office suite | `~~office suite` | Microsoft 365, Google Workspace | spreadsheet models, reports |

## Rules for every connector

1. **Read first.** Pull the minimum fields and records needed. Record which system each figure came from and the time of the read.
2. **Writes are drafts.** Ticket updates, record changes, messages and uploads are drafted for the user. Nothing is sent or saved until the user explicitly approves that specific action.
3. **Respect access.** Use the user's own permissions. Never ask for or store credentials, tokens or keys in chat or files.
4. **Personal data.** Fetch employee names, emails and device assignments only when the task needs them, and don't echo them more widely than necessary.

## Configuring

The plugin ships with no live `.mcp.json`, because connector endpoints are specific to your tenant and vendor. Copy `.mcp.json.example` to `.mcp.json` and fill in the servers your organization has approved. Use each vendor's own documentation for the endpoint URL and authentication.
